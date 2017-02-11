#!/bin/bash
docker-compose run generate
docker-compose up -d preview
sleep 5
open http://localhost:2369
