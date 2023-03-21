FROM php:8.2

ARG deployer_version
ARG download_url

RUN apt-get update
RUN apt-get install -y ssh rsync
RUN curl -LO $download_url/$deployer_version/deployer.phar
RUN mv deployer.phar /usr/local/bin/dep
RUN chmod +x /usr/local/bin/dep
