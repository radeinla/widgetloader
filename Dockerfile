FROM ubuntu:14.04

RUN apt-get update -y && \
    apt-get install git nodejs nodejs-legacy npm libfreetype6-dev libfontconfig -y

RUN npm install -g grunt-cli

RUN mkdir /widgetloader

WORKDIR /widgetloader

ADD package.json /widgetloader/package.json

RUN npm install

ADD . /widgetloader

EXPOSE 9001

CMD grunt