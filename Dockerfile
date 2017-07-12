FROM alpine

MAINTAINER sahsu.mobi@gmail.com

RUN apk add --update nodejs nodejs-npm && \
      rm /var/cache/apk/*
RUN npm install -g jsonlint && npm install -g jsondiffpatch && npm install -g prettyjson && npm install -g json-minify
