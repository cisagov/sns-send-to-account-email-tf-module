# ------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------
variable "topic_display_name" {
  type        = string
  description = "The display name of the SNS topic."
  default     = "cloudwatch_alarms"
}

variable "topic_kms_encryption_key_id" {
  type        = string
  description = "The ID of the KMS key used to encrypt the SNS messages at rest.  By default the SNS service key is used."
  default     = "alias/aws/sns"
}

variable "topic_name" {
  type        = string
  description = "The name of the SNS topic."
  default     = "cloudwatch-alarms"
}
