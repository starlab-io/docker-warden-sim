FROM starlabio/centos-native-build:1.11
MAINTAINER Star Lab <info@starlab.io>

RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm && \
    yum install -y python36 python36-pip && \
    yum install -y nc && \
    yum clean all && \
    rm -rf /var/cache/yum/* /tmp/* /var/tmp/*

RUN pip3 install virtualenv

RUN pip3 install protobuf flask pytest pymongo numpy tensorflow keras
