#!/bin/bash
export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export HADOOP_HOME=/usr/local/hadoop 

export PATH=$PATH:$HADOOP_HOME/bin 

export PATH=$PATH:$HADOOP_HOME/sbin 

export HADOOP_MAPRED_HOME=$HADOOP_HOME 

export HADOOP_COMMON_HOME=$HADOOP_HOME 

export HADOOP_HDFS_HOME=$HADOOP_HOME 

export YARN_HOME=$HADOOP_HOME 

export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native 

export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib" 

#service ssh start
