#!/bin/bash

docker build -t sebastianhofer86/deployer:6 .
docker build -t sebastianhofer86/deployer:latest .
docker push sebastianhofer86/deployer:6
docker push sebastianhofer86/deployer:latest
