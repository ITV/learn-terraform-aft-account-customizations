data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "hackday_bucket" {
  bucket = "aft-hackday-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
