#!/bin/bash

# !!!WARNING!!! remove all current database data and restore from backup file

# Read user and database from env file
source .env

# Stop the existing database container
docker compose stop database

# Remove the existing database container
docker compose rm -f database

# remove database volume
rm -rf ./volumes

# Create a new database container using the same image and configuration
docker compose up -d database

# Wait for the database container to start
sleep 10

# Postgres Restore Database Command on Docker
docker exec -i spotworldus-postgis pg_restore --clean --if-exists -U $POSTGRES_USER -d $POSTGRES_DB < spotworldus-postgres.dump
