output "sns_topic" {
  value       = aws_sns_topic.this
  description = "The SNS topic to which a message can be sent to forward it on to the email associated with the account."
}
