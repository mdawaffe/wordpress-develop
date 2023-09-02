#!/bin/sh

set -eux

if [ -z ${CODESPACE_NAME+x} ]; then
	export LOCAL_URL="http://localhost:8889"
else
	export LOCAL_URL="https://${CODESPACE_NAME}-8889.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
fi

# Install dependencies
npm install

# Build
npm run build:dev

# Start Docker-in-Docker
npm run env:start

echo "Setting up WordPress at $LOCAL_URL"
npm run env:install
