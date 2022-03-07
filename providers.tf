# The provider is used to read account information (account IDs and
# emails) from AWS Organizations.
provider "aws" {
  alias = "organizations_read_only"
}
