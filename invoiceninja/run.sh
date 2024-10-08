#!/bin/bash

# Fetch config values from Home Assistant
APP_URL=$(bashio::config 'app_url')
DB_HOST=$(bashio::config 'db_host')
DB_USERNAME=$(bashio::config 'db_username')
DB_PASSWORD=$(bashio::config 'db_password')
DB_DATABASE=$(bashio::config 'db_database')
APP_KEY=$(bashio::config 'app_key')

# Export them as environment variables
export APP_URL DB_HOST DB_USERNAME DB_PASSWORD DB_DATABASE APP_KEY

# Log the variables for debugging
echo "APP_URL=${APP_URL}"
echo "DB_HOST=${DB_HOST}"
echo "DB_USERNAME=${DB_USERNAME}"
echo "DB_PASSWORD=${DB_PASSWORD}"
echo "DB_DATABASE=${DB_DATABASE}"
echo "APP_KEY=${APP_KEY}"

# Call docker-php-entrypoint to handle PHP startup
exec /usr/local/bin/docker-php-entrypoint "$@"