FROM centos:centos6
MAINTAINER Reynier Perez <reynierpm@gmail.com>

RUN yum update -y && \
    yum groupinstall -y development && \
    yum install -y epel-release && \
    yum install -y iproute python-setuptools hostname inotify-tools yum-utils which wget tar zlib-devel openssl-devel && \
    yum upgrade python-setuptools && \
    yum clean all 

# Install python2.7 
RUN cd /tmp && \
    wget https://www.python.org/ftp/python/2.7.8/Python-2.7.8.tgz && \
    tar xvfz Python-2.7.8.tgz && \
    cd Python-2.7.8 && \
    ./configure --prefix=/usr/local && \
    make && \
    make altinstall

# Install setuptools + pip
RUN wget "https://bootstrap.pypa.io/get-pip.py" && python2.7 get-pip.py

RUN pip install supervisor

ADD container-files / 
VOLUME ["/data"]
ENTRYPOINT ["/config/bootstrap.sh"]

