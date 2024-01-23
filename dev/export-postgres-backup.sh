#!/bin/bash

# Read user and database from env file
source .env

# Back up and compress a Docker PostgreSQL database with gzip
docker exec -i spotworldus-postgis pg_dump --username $POSTGRES_USER $POSTGRES_DB -Fc > spotworldus-postgres.dump
