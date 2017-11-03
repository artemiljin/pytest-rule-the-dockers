#!/usr/bin/env bash
#title          :get_dockerize.sh
#usage          :get_dockerize.sh
#description    :Download Dockerize utility
#author         :Artem Iljin
#date           :2017-11-03
#version        :0.1

export DOCKERIZE_VERSION=v0.3.0
wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz
