FROM ubuntu:14.04

ENV LANG=en_US.UTF-8
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y automake bison flex g++ git libboost1.55-all-dev libevent-dev libssl-dev libtool make pkg-config
RUN apt-get install -y curl python
RUN curl --silent --show-error https://bootstrap.pypa.io/get-pip.py | python
ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
RUN locale-gen en_US.UTF-8
RUN dpkg-reconfigure locales
RUN apt-get install -y python-cffi
RUN apt-get install -y build-essential libssl-dev libffi-dev python-dev
RUN pip install 'requests[security]'
RUN git clone git://github.com/carpedm20/line.git
RUN cd line && python setup.py install
