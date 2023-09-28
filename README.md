# sns-send-to-account-email-tf-module #

[![GitHub Build Status](https://github.com/cisagov/sns-send-to-account-email-tf-module/workflows/build/badge.svg)](https://github.com/cisagov/sns-send-to-account-email-tf-module/actions)

A Terraform module for:

- Creating an SNS topic in an AWS account
- Subscribing the email associated with the account to the new SNS
  topic

## Usage ##

```hcl
module "example" {
  providers = {
    aws = aws
    aws.organizations_read_only = aws.organizations_read_only
  }
  source = "github.com/cisagov/sns-send-to-account-email-tf-module"

  topic_display_name = "My SNS topic"
  topic_name = "my_sns_topic"
}
```

## Requirements ##

| Name | Version |
|------|---------|
| terraform | ~> 1.0 |
| aws | ~> 3.38 |

## Providers ##

| Name | Version |
|------|---------|
| aws | ~> 3.38 |
| aws.organizations\_read\_only | ~> 3.38 |

## Modules ##

No modules.

## Resources ##

| Name | Type |
|------|------|
| [aws_sns_topic.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_organizations_organization.org](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/organizations_organization) | data source |

## Inputs ##

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| topic\_access\_policy | The fully-formed JSOM IAM access policy to apply to the SNS topic. | `string` | `null` | no |
| topic\_display\_name | The display name of the SNS topic. | `string` | n/a | yes |
| topic\_name | The name of the SNS topic. | `string` | n/a | yes |

## Outputs ##

| Name | Description |
|------|-------------|
| sns\_topic | The SNS topic to which a message can be sent to forward it on to the email associated with the account. |

## Notes ##

Running `pre-commit` requires running `terraform init` in every directory that
contains Terraform code. In this repository,  this is only the main directory.

## Contributing ##

We welcome contributions!  Please see [`CONTRIBUTING.md`](CONTRIBUTING.md) for
details.

## License ##

This project is in the worldwide [public domain](LICENSE).

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain
dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.
