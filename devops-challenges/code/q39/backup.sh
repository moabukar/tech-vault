#!/bin/bash
source config.env

# Create a timestamp
TIMESTAMP=$(date +%Y%m%d%H%M%S)

# Backup
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > ./backup-$TIMESTAMP.sql

# Log
echo "Backup created at $TIMESTAMP" >> logs/backup.log

# Upload to S3
aws s3 cp ./backup-$TIMESTAMP.sql s3://$S3_BUCKET/

# Log
echo "Backup uploaded to S3 at $TIMESTAMP" >> logs/backup.log
