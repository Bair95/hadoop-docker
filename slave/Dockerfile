FROM ubuntu:trusty

MAINTAINER Bair95 

ENV HADOOP_HOME="/usr/local/hadoop"  JAVA_HOME="/usr/lib/jvm/java-7-oracle"
ENV PATH=$PATH:$HADOOP_HOME/bin
ENV PATH=$PATH:$HADOOP_HOME/sbin
ENV HADOOP_MAPRED_HOME=$HADOOP_HOME
ENV HADOOP_COMMON_HOME=$HADOOP_HOME
ENV HADOOP_HDFS_HOME=$HADOOP_HOME
ENV HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
ENV HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib"

RUN apt-get install -y software-properties-common 
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN apt-get install -y oracle-java7-installer
RUN apt-get install -y ssh
RUN apt-get install -y rsync
RUN apt-get install -y supervisor
RUN apt-get install -y docker.io
RUN mkdir /root/.ssh/
ADD id_dsa /root/.ssh/id_dsa
ADD id_dsa.pub /root/.ssh/id_dsa.pub
RUN cat /root/.ssh/id_dsa.pub >> /root/.ssh/authorized_keys

ADD hadoop-2.7.0.tar.gz /tmp/hadoop
ADD start /usr/local/bin/start
RUN chmod a+x /usr/local/bin/start
RUN mv /tmp/hadoop/hadoop-2.7.0 /usr/local/hadoop

RUN service ssh start 
ADD hadoop-env.sh /usr/local/hadoop/etc/hadoop/
ADD hdfs-site.xml /usr/local/hadoop/etc/hadoop/
ADD mapred-site.xml /usr/local/hadoop/etc/hadoop/
ADD yarn-site.xml /usr/local/hadoop/etc/hadoop/
ADD core-site.xml /usr/local/hadoop/etc/hadoop/
RUN mkdir -p /usr/local/hadoop/hadoop_data/hdfs/datanode

RUN echo service ssh start >> /etc/bash.bashrc

