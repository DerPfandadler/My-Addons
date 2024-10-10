# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
FROM ghcr.io/home-assistant/aarch64-base:3.15 as base

FROM invoiceninja/invoiceninja:latest as invoiceninja

# Execute during the build of the image
ARG TEMPIO_VERSION BUILD_ARCH
RUN \
    curl -sSLf -o /usr/bin/tempio \
    "https://github.com/home-assistant/tempio/releases/download/2021.09.0/tempio_aarch64"

VOLUME /var/app/public /var/app/storage

# Copy root filesystem
COPY rootfs /