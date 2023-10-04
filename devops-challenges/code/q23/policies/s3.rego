package terraform

default allow = true

allow {
  not deny
}

deny[reason] {
  input.resource_changes[_].type == "aws_s3_bucket"
  input.resource_changes[_].change.actions[_] == "create"
  versioning_enabled = input.resource_changes[_].change.after.versioning[0].enabled
  not versioning_enabled

  reason := "Cannot create S3 buckets"
}

deny[reason] {
  input.resource_changes[_].type == "aws_s3_bucket"
  input.resource_changes[_].change.actions[_] == "create"
  acl = input.resource_changes[_].change.after.acl
  acl != "private"

  reason := "Cannot create S3 buckets"
}
