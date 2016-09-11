FROM node:slim

MAINTAINER abelsan <abel@mit.edu>

WORKDIR /src

RUN npm install -g sails grunt bower npm-check-updates

COPY src /src

RUN npm install

EXPOSE 1337

CMD ["node", "app.js"]
