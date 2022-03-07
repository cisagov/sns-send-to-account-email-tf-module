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

variable "topic_name" {
  type        = string
  description = "The name of the SNS topic."
  default     = "cloudwatch-alarms"
}
