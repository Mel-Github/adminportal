#!/bin/bash
run_in_docker() {
    echo build is $@
#   docker run hello-world
    docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=bookstoredatabase mysql:5.7
}

run_in_docker