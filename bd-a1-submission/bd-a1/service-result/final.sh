#!/bin/bash

# Ensure service-result directory exists
mkdir -p bd-a1/service-result/

# Check if the container exists before copying files
if docker ps -a --format '{{.Names}}' | grep -q '^bd-a1-container$'; then
    echo "Copying files from container..."
    docker cp bd-a1-container:/home/doc-bd-a1/res_dpre.csv bd-a1/service-result/
    docker cp bd-a1-container:/home/doc-bd-a1/eda-in-1.txt bd-a1/service-result/
    docker cp bd-a1-container:/home/doc-bd-a1/eda-in-2.txt bd-a1/service-result/
    docker cp bd-a1-container:/home/doc-bd-a1/eda-in-3.txt bd-a1/service-result/
    docker cp bd-a1-container:/home/doc-bd-a1/vis.png bd-a1/service-result/
    docker cp bd-a1-container:/home/doc-bd-a1/k.txt bd-a1/service-result/

    # Stop and remove the container
    docker stop bd-a1-container
    docker rm bd-a1-container
else
    echo "Error: Container 'bd-a1-container' not found!"
fi

