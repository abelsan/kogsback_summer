FROM node:slim

MAINTAINER abelsan <abel@mit.edu>

WORKDIR /src

RUN npm install -g sails grunt bower npm-check-updates
RUN npm install sails-mongo --save
RUN npm install forever -g

COPY src /src

RUN npm install

EXPOSE 1337