FROM ubuntu:16.04

RUN apt update && apt install -y wget

RUN wget -O /etc/apt/sources.list.d/ambari.list http://public-repo-1.hortonworks.com/ambari/ubuntu16/2.x/updates/2.6.2.0/ambari.list

RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com B9733A7A07513CAD
RUN apt-get update
RUN apt-cache showpkg ambari-server
RUN apt-cache showpkg ambari-agent
RUN apt-cache showpkg ambari-metrics-assembly

RUN apt-get install -y ambari-server



