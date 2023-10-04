package terraform

# Test to verify S3 bucket with versioning enabled
test_allow_versioning {
    not deny with input as {
        "resource_changes": [{
            "type": "aws_s3_bucket",
            "change": {
                "actions": ["create"],
                "after": {
                    "versioning": [{"enabled": true}],
                    "acl": "private"
                }
            }
        }]
    }
}

# Test to verify S3 bucket with versioning disabled
test_deny_versioning {
    deny with input as {
        "resource_changes": [{
            "type": "aws_s3_bucket",
            "change": {
                "actions": ["create"],
                "after": {
                    "versioning": [{"enabled": false}],
                    "acl": "private"
                }
            }
        }]
    }
}

# Test to verify S3 bucket with wrong ACL
test_deny_wrong_acl {
    deny with input as {
        "resource_changes": [{
            "type": "aws_s3_bucket",
            "change": {
                "actions": ["create"],
                "after": {
                    "versioning": [{"enabled": true}],
                    "acl": "public-read"
                }
            }
        }]
    }
}

# Test to verify S3 bucket with everything right
test_allow_everything_right {
    not deny with input as {
        "resource_changes": [{
            "type": "aws_s3_bucket",
            "change": {
                "actions": ["create"],
                "after": {
                    "versioning": [{"enabled": true}],
                    "acl": "private"
                }
            }
        }]
    }
}
