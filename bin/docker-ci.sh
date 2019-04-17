#!/bin/bash
docker-compose exec excit mix deps.get
docker-compose exec excit mix deps.compile
docker-compose exec excit mix compile
docker-compose exec excit mix test
docker-compose exec excit mix credo --strict
docker-compose exec excit mix coveralls
