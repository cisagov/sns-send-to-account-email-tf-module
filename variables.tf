# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------
variable "topic_display_name" {
  type        = string
  description = "The display name of the SNS topic."
}

variable "topic_name" {
  type        = string
  description = "The name of the SNS topic."
}
