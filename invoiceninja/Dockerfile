ARG BUILD_FROM
FROM $BUILD_FROM

# Install necessary packages for running Invoice Ninja
RUN apk add --no-cache \
    php \
    php-fpm \
    php-mysqli \
    php-gd \
    php-json \
    php-mbstring \
    php-session \
    php-xml \
    mariadb-client \
    nginx \
    curl \
    unzip

VOLUME /var/app/public /var/app/storage

# Download and extract Invoice Ninja
RUN mkdir -p /var/www/app && \
    curl -L -o invoiceninja.tar.gz "https://github.com/invoiceninja/invoiceninja/archive/refs/tags/v5.10.34.tar.gz" && \
    tar -xzvf invoiceninja.tar.gz -C /var/www/app

LABEL \
  io.hass.version="VERSION" \
  io.hass.type="addon" \
  io.hass.arch="armhf|aarch64|i386|amd64"