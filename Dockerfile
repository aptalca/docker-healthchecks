FROM lsiobase/alpine.python:3.6
MAINTAINER Alex Phillips <ahp118@gmail.com>

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# install packages
RUN \
    apk add --no-cache \
    python2-dev \
    mysql \
    postgresql-dev \
    gcc \
    musl-dev

# copy local files
COPY root/ /

# ports and volumes
EXPOSE 8000
VOLUME /config
