#!/bin/bash
#docker ps
docker container list --all
sleep 1
 #docker stop target1 target2 target3 db_and_web_server1 db_and_web_server2
 docker exec -it target1 kill 1
 docker exec -it target2 kill 1
 docker exec -it target3 kill 1
 docker exec -it db_and_web_server1 kill 1
 docker exec -it db_and_web_server2 kill 1
 sleep 5
 docker rm target1 target2 target3 db_and_web_server1 db_and_web_server2
 sleep 2
 docker container list --all
 df -h