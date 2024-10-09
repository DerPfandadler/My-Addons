FROM invoiceninja/invoiceninja:latest

COPY /usr/bin/run.sh /
COPY config.yaml /
COPY supervisord.conf /etc/supervisord.conf

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
EXPOSE 8151