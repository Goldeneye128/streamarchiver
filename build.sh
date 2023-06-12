#!/bin/bash

docker stop vod-dl
docker rm vod-dl
docker rmi vod-dl
docker build -t vod-dl .
docker run 
