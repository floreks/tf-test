#!/usr/bin/env bash

set -euo pipefail

duration_seconds="${1:-60}"
interval_seconds="${2:-1}"

if ! [[ "$duration_seconds" =~ ^[0-9]+$ ]] || (( duration_seconds < 60 )); then
  printf 'duration must be an integer of at least 60 seconds\n' >&2
  exit 2
fi

if ! [[ "$interval_seconds" =~ ^[0-9]+([.][0-9]+)?$ ]] || [[ "$interval_seconds" == "0" || "$interval_seconds" == "0."* ]]; then
  printf 'interval must be a positive number of seconds\n' >&2
  exit 2
fi

start_time="$(date +%s)"
message_count=0

while (( $(date +%s) - start_time < duration_seconds )); do
  message_count=$((message_count + 1))
  printf '[%s] streaming response %d (elapsed %ds)\n' \
    "$(date -u '+%Y-%m-%dT%H:%M:%SZ')" \
    "$message_count" \
    "$(( $(date +%s) - start_time ))"
  sleep "$interval_seconds"
done

printf '[%s] streaming response complete after %ds\n' \
  "$(date -u '+%Y-%m-%dT%H:%M:%SZ')" \
  "$(( $(date +%s) - start_time ))"
