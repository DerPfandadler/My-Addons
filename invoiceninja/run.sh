#!/usr/bin/with-contenv bashio

# Log that the script has started
bashio::log.info "Starting run.sh script..."

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
bashio::log.info "APP_URL=${APP_URL}"
bashio::log.info "DB_HOST=${DB_HOST}"
bashio::log.info "DB_USERNAME=${DB_USERNAME}"
bashio::log.info "DB_DATABASE=${DB_DATABASE}"
bashio::log.info "APP_KEY=${APP_KEY}"

# Call the original docker-php-entrypoint and wait for it to finish
bashio::log.info "Calling docker-php-entrypoint..."
/usr/local/bin/docker-php-entrypoint "$@"

# Ensure the services (like supervisord) start after docker-php-entrypoint finishes
bashio::log.info "docker-php-entrypoint finished, starting supervisord..."
exec /usr/bin/supervisord -c /etc/supervisor/supervisord.conf