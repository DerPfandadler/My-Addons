#!/bin/bash

# Parse config.yaml for environment variables
APP_URL=$(grep 'app_url' /data/options.yaml | sed 's/.*app_url: //')
DB_USERNAME=$(grep 'db_username' /data/options.yaml | sed 's/.*db_username: //')
DB_PASSWORD=$(grep 'db_password' /data/options.yaml | sed 's/.*db_password: //')
DB_DATABASE=$(grep 'db_database' /data/options.yaml | sed 's/.*db_database: //')
APP_KEY=$(grep 'app_key' /data/options.yaml | sed 's/.*app_key: //')

# Export the parsed values as environment variables
export APP_URL DB_USERNAME DB_PASSWORD DB_DATABASE APP_KEY

# Log the variables for debugging purposes
echo "APP_URL=${APP_URL}"
echo "DB_USERNAME=${DB_USERNAME}"
echo "DB_PASSWORD=${DB_PASSWORD}"
echo "DB_DATABASE=${DB_DATABASE}"
echo "APP_KEY=${APP_KEY}"

# Start the main service (e.g., PHP or web server)
exec /usr/local/bin/docker-php-entrypoint "$@"
