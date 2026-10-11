data "datadog_integration_aws_account" "integration_aws_account_lookup" {
  for_each = var.integration_aws_account_lookup

  aws_account_id = each.value.aws_account_id
}

