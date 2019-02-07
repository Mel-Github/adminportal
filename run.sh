#!/bin/bash
run_in_docker() {
    echo $1
#   docker run hello-world
    docker run --name $1_mysql -e MYSQL_ROOT_PASSWORD=password MYSQL_DATABASE=bookstoredatabase -d mysql:latest -p 
    3306:3306

}

run_in_docker