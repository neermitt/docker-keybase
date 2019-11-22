ARG ALPINE_VERSION=edge
FROM alpine:$ALPINE_VERSION

MAINTAINER NEERAJ MITTAL < mittal.neeraj@gmail.com >

ARG ALPINE_REPO=http://dl-cdn.alpinelinux.org/alpine/edge/testing
ARG KEYBASE_VERSION=4.2.1-r1

RUN apk add --update --repository=${ALPINE_REPO} \ 
    keybase-client=${KEYBASE_VERSION} \
    && rm -rf /var/cache/apk/* 
