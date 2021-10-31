#!/bin/bash

if test -f /etc/nginx/sites-enabled/startup; then
	rm /etc/nginx/sites-enabled/startup;
fi
/usr/local/bin/render-template.sh "/etc/nginx/templates/snikket-common" "/etc/nginx/snippets/snikket-common.conf"
proto=http 
/usr/local/bin/render-template.sh "/etc/nginx/templates/$proto" "/etc/nginx/sites-enabled/$proto";
/usr/sbin/nginx -s reload

sleep inf
