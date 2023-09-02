#!/bin/sh

set -eux

# Copy the welcome message
sudo cp .devcontainer/welcome-message.txt /usr/local/etc/vscode-dev-containers/first-run-notice.txt
SITE_URL="https://${CODESPACE_NAME}-8889.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
sudo sed -i "s!SITE_URL!$SITE_URL!" /usr/local/etc/vscode-dev-containers/first-run-notice.txt
