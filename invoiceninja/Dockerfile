# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
FROM homeassistant/aarch64-base:3.15

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

# Set permissions for the web directory
RUN chown -R root:root /var/www/app

# Expose ports
EXPOSE 80 443

# Copy root filesystem
COPY rootfs /

# Set executable permission for env var script
RUN chmod +x /etc/cont-init.d/01-set-env-vars
RUN chmod +x /etc/s6-overlay/s6-rc.d/*/run

ENV S6_LOGGING 1

WORKDIR /