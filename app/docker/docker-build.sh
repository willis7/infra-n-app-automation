#!/usr/bin/env bash

echo "########### Cleaning the Docker build dir ###########"
rm -fr build
mkdir build

echo "########### Copying the Gradle build outputs to this build directory ###########"
cp ../build/libs/gs-spring-boot-0.1.0.jar build

echo "########### Building the Docker image from the Dockerfile ###########"
docker build --rm -t gs_spring_boot .