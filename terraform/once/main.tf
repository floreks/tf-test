resource "null_resource" "test_stack_run" {
  # Empty triggers means it will only run once
  triggers = {}

  provisioner "local-exec" {
    command = "echo 'Stack run test executed successfully'"
  }
}

# Output to verify the resource was created
output "resource_id" {
  value = null_resource.test_stack_run.id
}