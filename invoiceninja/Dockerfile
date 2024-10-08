FROM invoiceninja/invoiceninja:latest

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

COPY run.sh usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
# Override the default ENTRYPOINT
ENTRYPOINT [ "/usr/local/bin/run.sh" ]




