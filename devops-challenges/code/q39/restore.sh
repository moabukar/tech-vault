#!/bin/bash
source config.env

# Ask for the backup file
echo "Enter the timestamp of the backup you want to restore:"
read BACKUP_TIME

# Download from S3
aws s3 cp s3://$S3_BUCKET/backup-$BACKUP_TIME.sql .

# Restore
mysql -u $DB_USER -p$DB_PASS $DB_NAME < backup-$BACKUP_TIME.sql

# Log
echo "Backup restored from $BACKUP_TIME" >> logs/restore.log
