FROM alpine
Run apk update \
  && apk add ca-certificates wget \
  && update-ca-certificates \
  && wget -c https://opensnp.org/data/zip/opensnp_datadump.current.zip \
  && apk del ca-certificates wget \
  && rm -rf /var/lib/apt/lists/*