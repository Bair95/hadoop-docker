#!/bin/bash
#sudo rm -rf /hadoop1/*
#sudo rm -rf /hadoop2/*
#sudo rm -rf /hadoop3/*
#sudo rm -rf /hadoopmaster/*



slave/launch-slave.sh
master/launch-master.sh
sudo ./update-docker-dns.sh
docker exec s1 start
docker exec s2 start
docker exec s3 start
docker exec hadoopmaster start
