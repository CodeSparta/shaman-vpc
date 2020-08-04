#!/bin/bash
clear
sudo podman run -it --rm \
    --name devkit-vpc \
    --entrypoint ./destroy.yml \
    --workdir /root/deploy/terraform/devkit-vpc \
    --volume $(pwd):/root/deploy/terraform/devkit-vpc:z \
  docker.io/codesparta/konductor
