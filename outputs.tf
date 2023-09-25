output "sns_topic" {
  description = "The SNS topic to which a message can be sent to forward it on to the email associated with the account."
  value       = aws_sns_topic.this
}
