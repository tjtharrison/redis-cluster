FROM ubuntu
RUN apt-get update && \
    apt-get install software-properties-common wget -y
RUN apt-add-repository -y ppa:brightbox/ruby-ng && \
    apt-get update && \
    apt-get -y install build-essential \
    ruby2.3 \
    ruby2.3-dev \
    redis-tools && \
    gem install redis
RUN wget http://download.redis.io/releases/redis-3.2.6.tar.gz && \
    tar xzf redis-3.2.6.tar.gz && \
    make -C redis-3.2.6
RUN ln -s ln -s /redis-3.2.6/src/redis-server /usr/bin/