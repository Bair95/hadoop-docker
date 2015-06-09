#!/usr/bin/env bash

service ssh start
ssh-keyscan -H s1.heartbit.io >> /root/.ssh/known_hosts
ssh-keyscan -H s2.heartbit.io >> /root/.ssh/known_hosts
ssh-keyscan -H s3.heartbit.io >> /root/.ssh/known_hosts
ssh-keyscan -H 0.0.0.0 >> /root/.ssh/known_hosts
ssh-keyscan -H hadoopmaster.heartbit.io >> /root/.ssh/known_hosts

start-dfs.sh
start-yarn.sh
