#!/bin/bash

docker cp ./snapshot.yaml spotworldus-directus:/directus/snapshot.yaml 
docker exec spotworldus-directus npx directus schema apply --yes ./snapshot.yaml