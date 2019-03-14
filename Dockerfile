FROM starlabio/centos-native-build:1.11
MAINTAINER Star Lab <info@starlab.io>

RUN yum -y install https://centos7.iuscommunity.org/ius-release.rpm && \
    yum install -y python36u python36u-pip && \
    yum clean all && \
    rm -rf /var/cache/yum/* /tmp/* /var/tmp/*

RUN pip3.6 install virtualenv

RUN ln -s /usr/bin/python3.6 /usr/bin/python3 && \
    ln -s /usr/bin/pip3.6 /usr/bin/pip3

RUN pip3 install protobuf flask pytest
