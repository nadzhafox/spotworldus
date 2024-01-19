#!/bin/bash

docker exec spotworldus-directus npx directus schema snapshot --yes ./snapshot.yaml
docker cp spotworldus-directus:/directus/snapshot.yaml ./snapshot.yaml