FROM alpine
MAINTAINER Huo Linhe <linhehuo@gmail.com>
RUN apk update \
  && apk add ca-certificates wget \
  && update-ca-certificates \
  && mkdir /opensnp/ \
  && cd /opensnp && wget -c --progress=dot:mega https://opensnp.org/data/zip/opensnp_datadump.current.zip \
  && apk del ca-certificates wget \
  && rm -rf /var/lib/apt/lists/*
