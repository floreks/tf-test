# tf-test

## Streaming response test

Run the long-lived Bash stream to exercise incremental tool-call rendering:

```bash
./scripts/stream-output.sh
```

The command prints a timestamped line every second for at least 60 seconds.
Optionally pass a duration and interval (in seconds):

```bash
./scripts/stream-output.sh 90 0.5
```

The duration is intentionally rejected when it is shorter than 60 seconds so
the default behavior remains suitable for testing response streaming.
