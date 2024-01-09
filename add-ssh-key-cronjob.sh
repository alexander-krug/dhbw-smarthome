#!/bin/bash

# Public key to be added
PUBLIC_KEY1="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOLIEvA6gILpAGUtHLtxOyT6hTSsMBqrvk1dfH1LU6Aj alex@Air-von-alex.fritz.box"
# PUBLIC_KEY2="AAAAB3NzaC1yc2EAAAADAQABAAABAQCODmGBgHGGiqrLz6VHsfKL1GG9Fj8HySCb3z+1RHJBX6G18fyCb9T35h7Bs7LpbhAGWOWSgFaejjtxPNWhrPyDFk2U/VjAaJh2tkI50VGYakvyx+i2tbtszrKyUh/614+VaOjBEVyGZ54lTX5YJkqqFxdoppp2w8xV1khSNxTergh00Cki+HsE/UzJSoq8qf8Y5YDIHxdwsCV2Fn6sedd1JCSPqMd3z5mS9B0zuVIWUgiWyLdu9mhg926ADU2zlc8XUHti4INJYmvWee8HfiriiTYZL1RfkEiKLQDe2ITnfyU90+UiJLYqJyS+ZIpa4ebWNmotb7Yow/mtbSfKg89p"
PUBLIC_KEY2="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOxXxzaq2PvtI4EzxQovD51JUbTWI9rtwt9N/XIU93+F"

# Path to authorized_keys file
AUTHORIZED_KEYS_FILE="/home/al_krug64/.ssh/authorized_keys"
AUTHORIZED_KEYS_FILE2="/home/simonfernau/.ssh/authorized_keys"

# Check if the key1 is already present
if grep -qF "$PUBLIC_KEY1" "$AUTHORIZED_KEYS_FILE"; then
    echo "Key already exists. No action needed."
else
    # Add the key1 to authorized_keys
    echo "$PUBLIC_KEY1" >> "$AUTHORIZED_KEYS_FILE"
    echo "Key added successfully."
fi

# Check if the key2 is already present
if grep -qF "$PUBLIC_KEY2" "$AUTHORIZED_KEYS_FILE2"; then
    echo "Key already exists. No action needed."
else
    # Add the key to authorized_keys
    echo "$PUBLIC_KEY2" >> "$AUTHORIZED_KEYS_FILE2"
    echo "Key added successfully."
fi

