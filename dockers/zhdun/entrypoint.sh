#!/bin/sh
#title          :entrypoint.sh
#usage          :entrypoint.sh
#description    :entrypoint for zhdun docker
#author         :Artem Iljin
#date           :2017-11-03
#version        :0.1

exec dockerize "$@" echo "Done"
