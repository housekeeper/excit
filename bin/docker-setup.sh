#!/bin/bash
if [ ! -f .env ]; then
  cp .env.template .env
fi
./bin/docker-start.sh
./bin/docker-ci.sh
