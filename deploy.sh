#!/bin/bash
set -e
docker-compose run buster
pushd static
git add -A
git commit -m "Update on the website at $(date)"
git push origin master
popd
