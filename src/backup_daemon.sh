#! /bin/bash

DATABASE_NAME = "src_production"

mkdir backups

mysqldump -u src -p src_pass ${DATABASE_NAME} > /backups/backup.sql