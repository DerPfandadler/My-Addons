##!/bin/bash
/usr/local/bin/docker-php-entrypoint "$@"
echo "Test"
exec /usr/bin/supervisord -c /etc/supervisor/supervisord.conf