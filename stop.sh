#!/bin/bash

echo Stopping localstack
localstack stop

echo Stopping docker
sudo systemctl stop docker

