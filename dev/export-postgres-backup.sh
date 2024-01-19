#!/bin/bash

# Read user and database from env file
source .env

# Back up and compress a Docker PostgreSQL database with gzip
docker exec -i spotworldus-postgis /usr/bin/pg_dump \
 -U $DB_USER $DB_DATABASE | gzip -9 > spotworldus-postgis-backup.sql.gz 
