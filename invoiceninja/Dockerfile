FROM invoiceninja/invoiceninja:latest

ARG CACHEBUST=1
RUN echo "Cache busting: $CACHEBUST"

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

COPY run.sh /usr/bin/run.sh
RUN chmod +x /usr/bin/run.sh

# Override the default ENTRYPOINT
ENTRYPOINT []

CMD ["/usr/bin/run.sh"]




