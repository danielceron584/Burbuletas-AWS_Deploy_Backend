FROM node:lts-alpine as builder

RUN mkdir -p /usr/src/api
WORKDIR /usr/src/api

ENV PATH /usr/src/api/node_modules/.bin:$PATH

COPY package.json /usr/src/api/package.json
RUN npm install --silent
RUN npm run build --silent

