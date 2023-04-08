#! /bin/bash

DATABASE_NAME = "src_production"

mkdir backups

mysqldump -u src -p $1 ${DATABASE_NAME} > /backups/backup.sql