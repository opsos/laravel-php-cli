FROM php:7.4.4-cli-alpine3.11

RUN apk add --no-cache \
    make \
    autoconf \
    gcc \
    libc-dev && \
    pecl install -o -f redis && \
    docker-php-ext-enable redis && \
    docker-php-ext-install pdo_mysql && \
    apk del gcc make autoconf
