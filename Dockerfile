FROM docker:24.0.5-cli-alpine3.18
RUN apk update
RUN apk add bash age curl jq coreutils

ENV SOPS_VERSION 3.7.3

RUN curl -L https://github.com/mozilla/sops/releases/download/v${SOPS_VERSION}/sops-v${SOPS_VERSION}.linux -o /usr/local/bin/sops
RUN chmod +x /usr/local/bin/sops

ADD bin/docker-compose-customise /usr/local/bin/docker-compose-customise
#ADD bin/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

#CMD /usr/local/bin/docker-entrypoint.sh
