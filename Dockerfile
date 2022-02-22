FROM php:8.0

RUN apt-get update
RUN apt-get install -y ssh rsync
RUN curl -LO https://deployer.org/deployer.phar
RUN mv deployer.phar /usr/local/bin/dep
RUN chmod +x /usr/local/bin/dep
RUN dep self-update
