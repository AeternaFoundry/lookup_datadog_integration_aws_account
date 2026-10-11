variable "integration_aws_account_lookup" {
  description = <<EOT
Map of integration_aws_account_lookup, attributes below
Required:
    - aws_account_id
EOT

  type = map(object({
    aws_account_id = string
  }))
}

