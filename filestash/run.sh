#!/usr/bin/with-contenv bashio
# Start supervisord to manage OnlyOffice and Filestash
exec /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf