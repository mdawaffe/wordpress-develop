#!/bin/sh

set -eux

if [ -z ${CODESPACE_NAME+x} ]; then
	export LOCAL_URL="http://localhost:8889"
else
	export LOCAL_URL="https://${CODESPACE_NAME}-8889.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
fi

# Install dependencies
#cd /workspaces/wordpress-develop
#npm install && npm run build:dev

# Install WordPress and activate the plugin/theme.
#cd /var/www/html
#echo "Setting up WordPress at $LOCAL_URL"
#wp core install --url="$LOCAL_URL" --title="WordPress Trunk" --admin_user="admin" --admin_email="admin@example.com" --admin_password="password" --skip-email
