#!/bin/bash
run_in_docker() {
    echo $1
#   docker run hello-world
    docker run -d -p 3306:3306 --name $1_mysql -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=bookstoredatabase
    mysql:latest


}

run_in_docker