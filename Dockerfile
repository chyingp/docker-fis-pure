FROM ubuntu:14.04
MAINTAINER chyingp <416394284@qq.com>
RUN apt-get -qq update
RUN apt-get -qqy install curl
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN npm install -g fis-pure@0.1.4
RUN npm install -g fis-parser-node-sass@0.1.4
RUN echo "docker-fis-pure installed successfully!"

