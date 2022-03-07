# ------------------------------------------------------------------------------
# We can get the account ID of this account from the provider's caller
# identity.
# ------------------------------------------------------------------------------
data "aws_caller_identity" "this" {
}

# Retrieve the information for all accounts in the organization.  This
# is used, for instance, to lookup the account IDs for the user
# account.
data "aws_organizations_organization" "org" {
  provider = aws.organizations_read_only
}

locals {
  # Get this account's ID
  this_account_id = data.aws_caller_identity.this.account_id

  # Look up the email for this account from the AWS organizations
  # provider.
  this_account_email = [
    for account in data.aws_organizations_organization.org.accounts :
    account.email
    if account.id == local.this_account_id
  ][0]
}
