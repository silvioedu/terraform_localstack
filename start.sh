#!/bin/bash

echo Starting docker
sudo systemctl start docker

echo Starting localstack
localstack start -d

