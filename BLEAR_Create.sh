#!/bin/bash
# Bluecat Let's Encrypt Auto-Renewal Creation
# BLEAR Creation Script - Script 1 of 1 - Create Certs
# Authors: Sam Jones, Seth Timmons

# Bluecat API Credentials Here
export BLUECAT_USER_NAME="<API username>"
export BLUECAT_PASSWORD="<API password>"

# Bluecat Organization Variables
export BLUECAT_SERVER_URL="<bluecat.ipam.url.com>"
export BLUECAT_CONFIG_NAME="<bluecat ipam config name>"
export BLUECAT_DNS_VIEW="<bluecat dns view>"


# Admin Variables
ADMIN_EMAIL="<admin@email.com>"
FULL_PATH="/opt/lego/.lego/"

# Server Variables
DOMAINS="<full.domain.name.com>"


# Run and Register and create certs
/opt/lego/lego --email=$ADMIN_EMAIL --domains=$DOMAINS --path=$FULL_PATH --dns  bluecat run


