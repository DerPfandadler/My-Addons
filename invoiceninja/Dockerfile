FROM invoiceninja/invoiceninja:latest

# Set environment variables for database and app configuration
ENV APP_ENV='production' \
    APP_DEBUG=0 \
    APP_URL= \
    APP_KEY= \
    APP_CIPHER='AES-256-CBC' \
    DB_TYPE='mysql' \
    DB_STRICT='false' \
    DB_HOST=core-mariadb \
    DB_DATABASE= \
    DB_USERNAME= \
    DB_PASSWORD=

# Ensure persistent volumes for public and storage directories
VOLUME /var/app/public /var/app/storage

# Expose port for web access
EXPOSE 80

