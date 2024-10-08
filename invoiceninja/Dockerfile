FROM invoiceninja/invoiceninja:latest

COPY run.sh /usr/bin/run.sh

# Install dependencies if not already installed
RUN apt-get update && apt-get install -y bash curl jq

# Download and install Bashio manually
RUN curl -L https://github.com/hassio-addons/bashio/archive/refs/tags/v0.14.3.tar.gz | tar zx \
    && mv bashio-0.14.3/lib /usr/lib/bashio \
    && ln -s /usr/lib/bashio/bashio /usr/bin/bashio

# Set environment variables for database and app configuration
ENV APP_ENV='production' \
    APP_DEBUG=0 \
    APP_CIPHER='AES-256-CBC' \
    DB_TYPE='mysql' \
    DB_STRICT='false' \
    DB_HOST=core-mariadb

# Ensure persistent volumes for public and storage directories
VOLUME /var/app/public /var/app/storage

# Expose port for web access
EXPOSE 80

# Override the default ENTRYPOINT
ENTRYPOINT []
RUN /bin/sh  /usr/bin/run.sh




