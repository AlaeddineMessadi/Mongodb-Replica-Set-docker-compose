#!/bin/bash

docker-compose --file ./mongodb/docker-compose.yml up -d

sleep 5

docker exec mongo1 /scripts/init.sh
