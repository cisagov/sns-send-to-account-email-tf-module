# ------------------------------------------------------------------------------
# Create the SNS topic that allows email to be sent to the email
# address associated with the account.  Subscribe the account email to
# the new SNS topic.
# ------------------------------------------------------------------------------

resource "aws_sns_topic" "this" {
  name         = var.topic_name
  display_name = var.topic_display_name
}

moved {
  from = aws_sns_topic.cloudwatch_alarm
  to   = aws_sns_topic.this
}

resource "aws_sns_topic_subscription" "this" {
  endpoint  = local.this_account_email
  protocol  = "email"
  topic_arn = aws_sns_topic.this.arn
}

moved {
  from = aws_sns_topic_subscription.account_email
  to   = aws_sns_topic_subscription.this
}
