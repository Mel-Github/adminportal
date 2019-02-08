#!/bin/bash
run_in_docker() {
    echo build is $@
#   docker run hello-world
#   docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=bookstoredatabase mysql:5.7
    containerid=`docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=bookstoredatabase mysql:5.7`
    echo container id is $containerid


    ipaddress=`docker inspect --format '{{ .NetworkSettings.IPAddress }}' $containerid`
    echo ip address is $ipaddress
}

run_in_docker
