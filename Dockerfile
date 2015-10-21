#FROM nano/node.js
FROM alpine

MAINTAINER sahsu.mobi@gmail.com

#ADD ./jsonlint-master /jsonlnit-master
#CMD ["/usr/bin/node","/jsonlint-master/lib/cli.js"]
RUN apk add --update nodejs && \
      rm /var/cache/apk/*
RUN npm install -g jsonlint && npm install -g jsondiffpatch

