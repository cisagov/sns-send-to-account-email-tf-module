# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------
variable "topic_display_name" {
  description = "The display name of the SNS topic."
  type        = string
}

variable "topic_name" {
  description = "The name of the SNS topic."
  type        = string
}
