#!/bin/bash
 docker ps
 docker run --name target1 -d ubuntu-ssh 
 #mmumshad/ubuntu-ssh-enabled
 ansible target1 -m ping -i ~/ansible/inventory.txt
 docker run --name target2 -d ubuntu-ssh
 ansible target2 -m ping -i ~/ansible/inventory.txt
 docker run --name target3 -d ubuntu-ssh
 ansible target3 -m ping -i ~/ansible/inventory.txt
 docker run --name db_and_web_server1 -d ubuntu-ssh
 ansible db_and_web_server1 -m ping -i ~/ansible/inventory.txt
 docker run --name db_and_web_server2 -d ubuntu-ssh
 ansible db_and_web_server2 -m ping -i ~/ansible/inventory.txt
 docker ps
df -h