#!/bin/bash

# Custom logic before starting the app
APP_URL=$(bashio::config 'app_url')
DB_HOST=$(bashio::config 'db_host')
DB_USERNAME=$(bashio::config 'db_username')
DB_PASSWORD=$(bashio::config 'db_password')
DB_DATABASE=$(bashio::config 'db_database')
APP_KEY=$(bashio::config 'app_key')

export APP_URL DB_HOST DB_USERNAME DB_PASSWORD DB_DATABASE APP_KEY

# Call docker-php-entrypoint to handle PHP startup
exec /usr/local/bin/docker-php-entrypoint "$@"

# Optionally, start supervisord after PHP has initialized
exec /usr/bin/supervisord -c /etc/supervisor/supervisord.conf
