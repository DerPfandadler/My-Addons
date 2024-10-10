# https://developers.home-assistant.io/docs/add-ons/configuration#add-on-dockerfile
FROM homeassistant/aarch64-base:3.15 as base

FROM invoiceninja/invoiceninja:latest as invoiceninja

VOLUME /var/app/public /var/app/storage

# Copy root filesystem
COPY rootfs /

ENTRYPOINT ["/init"]