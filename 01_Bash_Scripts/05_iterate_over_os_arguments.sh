#!/bin/bash
# iterate from console
# example: bash 05_iterate_over_os_arguments.sh neo4j 
# the image neo4j would be downloaded
for var in "$@"
do
    docker pull "$var"
done
