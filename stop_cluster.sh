#!/bin/bash

# Stop Airflow
docker-compose -f docker-compose-airflow.yml down
# Stop Hadoop
docker-compose -f docker-compose-hadoop.yml down

# remove network
docker network prune -f
