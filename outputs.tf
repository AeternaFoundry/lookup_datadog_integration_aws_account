output "integration_aws_account_lookup_id" {
  description = "Map of id values across all integration_aws_account_lookup, keyed the same as var.integration_aws_account_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_integration_aws_account.integration_aws_account_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "integration_aws_account_lookup_aws_account_id" {
  description = "Map of aws_account_id values across all integration_aws_account_lookup, keyed the same as var.integration_aws_account_lookup except keys with no aws_account_id are omitted"
  value       = { for k, v in data.datadog_integration_aws_account.integration_aws_account_lookup : k => v.aws_account_id if v.aws_account_id != null && length(v.aws_account_id) > 0 }
}

