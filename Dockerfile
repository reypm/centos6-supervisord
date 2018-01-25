FROM centos:centos6
MAINTAINER Reynier Perez <reynierpm@gmail.com>

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y iproute python-setuptools hostname inotify-tools yum-utils which python-meld3 python-pip && \
    yum clean all && \
    pip install supervisor

ADD container-files /
VOLUME ["/data"]
ENTRYPOINT ["/config/bootstrap.sh"]
