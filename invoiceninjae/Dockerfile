FROM invoiceninja/invoiceninja:arm64

# Set environment variables for database and app configuration
ENV APP_ENV='production' \
    APP_DEBUG=0 \
    APP_URL='http://ninja.dev' \
    APP_KEY=base64:GENERATE_YOUR_KEY \
    APP_CIPHER='AES-256-CBC' \
    DB_TYPE='mysql' \
    DB_STRICT='false' \
    DB_HOST=core-mariadb \
    DB_DATABASE=ninja \
    DB_USERNAME=ninja \
    DB_PASSWORD=ninja

# Ensure persistent volumes for public and storage directories
VOLUME /var/app/public /var/app/storage

# Expose port for web access
EXPOSE 80

