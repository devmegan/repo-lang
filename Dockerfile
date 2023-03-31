FROM ubuntu

RUN apt-get update && \
    apt-get install -y curl jq bsdmainutils

COPY repo-lang.sh /

CMD ["/bin/bash", "-c", " \
    read -p 'Enter GitHub username to analyse: ' gh_username && \
    /repo-lang.sh $gh_username \
"]