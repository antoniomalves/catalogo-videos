FROM node:12.20.0-alpine3.11

run apk add --no-cache bash

RUN touch /root/.bashrc | echo "PS1='\w\$ '" >> /root/.bashrc

RUN npm config set cache /home/node/app/.npm-cache --global

RUN npm install -g nodemon

RUN npm install -g @loopback/cli

RUN mkdir -p /home/node/app

USER node

WORKDIR /home/node/app
