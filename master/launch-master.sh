docker run -d --name hadoopmaster --hostname hadoopmaster.heartbit.io --dns=172.17.42.1 -p 8088:8088 -p 50070:50070  --link s1:s1.heartbit.io --link s2:s2.heartbit.io --link s3:s3.heartbit.io -v /hadoopmaster/:/usr/local/hadoop/hadoop_data/hdfs/namenode  hadoopmaster /usr/bin/supervisord --nodaemon

