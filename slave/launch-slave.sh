docker run -d --name s1 --hostname s1.heartbit.io --dns=172.17.42.1 -v /var/run/docker.sock:/var/run/docker.sock -v /hadoop1:/usr/local/hadoop/hadoop_data/hdfs/datanode  hadoopslave /usr/bin/supervisord --nodaemon
docker run -d --name s2 --hostname s2.heartbit.io --dns=172.17.42.1 -v /var/run/docker.sock:/var/run/docker.sock -v /hadoop2:/usr/local/hadoop/hadoop_data/hdfs/datanode  hadoopslave /usr/bin/supervisord --nodaemon
docker run -d --name s3 --hostname s3.heartbit.io --dns=172.17.42.1 -v /var/run/docker.sock:/var/run/docker.sock -v /hadoop3:/usr/local/hadoop/hadoop_data/hdfs/datanode  hadoopslave /usr/bin/supervisord --nodaemon


