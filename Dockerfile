FROM node:14.16.1-alpine3.13

WORKDIR /home/node/app
RUN apk update && apk add git && \
    apk add --no-cache bash && \
    apk add make nasm autoconf automake libtool dpkg pkgconfig libpng libpng-dev g++
RUN yarn global add gatsby-cli
EXPOSE 8000