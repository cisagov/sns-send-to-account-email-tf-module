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

# ------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------
variable "topic_access_policy" {
  default     = null
  description = "The fully-formed JSON IAM access policy to apply to the SNS topic."
  type        = string
  validation {
    condition     = var.topic_access_policy == null || can(jsondecode(var.topic_access_policy))
    error_message = "The topic_access_policy value must be null or a string consisting of valid JSON."
  }
}
