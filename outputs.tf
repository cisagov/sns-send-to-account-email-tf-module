output "sns_topic" {
  value       = aws_sns_topic.cloudwatch_alarm
  description = "The SNS topic to which a message is sent when a CloudWatch alarm is triggered."
}
