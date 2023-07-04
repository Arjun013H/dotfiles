#!/bin/bash

sudo docker run --name my-mysql -e MYSQL_ROOT_PASSWORD=root  -p 3306:3306 -d mysql:latest 

#sudo docker run --name my-mysql    -p 3306:3306 -d mysql:latest
