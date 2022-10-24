FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /backup
ADD functions.sh /backup

RUN apt-get update -y  && \
    apt-get install  --no-install-recommends -y default-mysql-client wget curl && \
    curl -sL https://aka.ms/InstallAzureCLIDeb |  bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    chmod 0755 /backup/* && \
    ln -sf /proc/1/fd/1 /var/log/test.log

ENTRYPOINT ["/bin/bash" ,"/backup/functions.sh",">>","/var/log/test.log"]