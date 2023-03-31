FROM ubuntu

RUN apt-get update && \
    apt-get install -y curl jq bsdmainutils

COPY repo-lang.sh /

ENTRYPOINT ["/repo-lang.sh"]