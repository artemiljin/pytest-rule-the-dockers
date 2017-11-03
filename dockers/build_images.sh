#!/usr/bin/env bash
#title          :build_images.sh
#usage          :build_images.sh
#description    :delete / create docker images for the project
#author         :Artem Iljin
#date           :2017-11-03
#version        :0.1
WS_DIR=`pwd`
docker rmi backup_restore
docker rmi web
docker rmi zhdun
cd ${WS_DIR}/backup_restore
docker build -t backup_restore .
cd ${WS_DIR}/web
docker build -t web .
cd ${WS_DIR}/zhdun
docker build -t zhdun .
