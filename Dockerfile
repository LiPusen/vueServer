FROM node:8-slim
MAINTAINER Liyq <lps8888888@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app

EXPOSE 8000

ENTRYPOINT node app.js