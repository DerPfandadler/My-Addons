#!/bin/bash

# Parse the values from the config.yaml file, ensuring we skip "str" lines
APP_URL=$(grep -E '^\s*app_url:' /config.yaml | grep -v 'str' | sed 's/.*app_url: //')
DB_USERNAME=$(grep -E '^\s*db_username:' /config.yaml | grep -v 'str' | sed 's/.*db_username: //')
DB_PASSWORD=$(grep -E '^\s*db_password:' /config.yaml | grep -v 'str' | sed 's/.*db_password: //')
DB_DATABASE=$(grep -E '^\s*db_database:' /config.yaml | grep -v 'str' | sed 's/.*db_database: //')
APP_KEY=$(grep -E '^\s*app_key:' /config.yaml | grep -v 'str' | sed 's/.*app_key: //')

# Export the parsed values as environment variables
export APP_URL DB_USERNAME DB_PASSWORD DB_DATABASE APP_KEY

# Log the variables for debugging purposes
echo "APP_URL=${APP_URL}"
echo "DB_USERNAME=${DB_USERNAME}"
echo "DB_PASSWORD=${DB_PASSWORD}"
echo "DB_DATABASE=${DB_DATABASE}"
echo "APP_KEY=${APP_KEY}"