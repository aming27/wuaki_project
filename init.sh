#!/bin/bash

#echo "Starting mysql service"
docker-compose -f "$PWD"/apps/docker-compose.yml -p wuaki up -d flaskdb
sleep 5

#Create user for database apps and load sql backup
docker run -ti --rm --net wuaki_wuaki -v "$PWD"/db/:/data library/mysql:5.7 ./bin/bash -c 'mysql -h wuaki_flaskdb_1 -u root -p2018@ikauw apps < ../data/user.sql && mysql -h wuaki_flaskdb_1 -u wuaki -pwuaki@2018 apps < ../data/app.sql'
sleep 5

#Starting Flask service
docker-compose -f "$PWD"/apps/docker-compose.yml -p wuaki up -d flask



 
 



