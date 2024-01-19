#!/bin/bash

# Read user and database from env file
source .env

# Postgres Restore Database Command on Docker
docker cp ./spotworldus-postgis-backup.sql.gz spotworldus-postgis:spotworldus-postgis-backup.sql.gz 
docker exec spotworldus-postgis gunzip spotworldus-postgis-backup.sql.gz 
docker exec spotworldus-postgis psql -U $DB_USER -d $DB_DATABASE -f spotworldus-postgis-backup.sql