#!/usr/bin/with-contenv bashio

# Fetch config values using bashio
APP_URL=$(bashio::config 'app_url')
DB_HOST=$(bashio::config 'db_host')
DB_USERNAME=$(bashio::config 'db_username')
DB_PASSWORD=$(bashio::config 'db_password')
DB_DATABASE=$(bashio::config 'db_database')
APP_KEY=$(bashio::config 'app_key')

# Export them as environment variables
export APP_URL DB_HOST DB_USERNAME DB_PASSWORD DB_DATABASE APP_KEY

# Start the service (supervisord in this case)
exec /usr/bin/supervisord -c /etc/supervisor/supervisord.conf
