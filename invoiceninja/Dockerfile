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

# Create the target directory
RUN mkdir -p /usr/local/bin

# Copy the run.sh script into the container
COPY run.sh /usr/local/bin/run.sh

# Verify the script was copied correctly
RUN ls -l /usr/local/bin/run.sh

# Set permissions on the run.sh script
RUN chmod +x /usr/local/bin/run.sh

# Execute the script
CMD ["/usr/local/bin/run.sh"]


