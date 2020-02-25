#!/bin/bash

# Make the flow balena_flows.json available in the user library
mkdir -p /data/node-red/user || true

# only copy the flow balena_flows.json if it doesn't exist as we don't want to overwrite any
# changes made via the node-red editor.
if [ ! -f /data/node-red/user/balena_flows.json ]; then
   echo "Copying balena_flows.json from repository to folder /data/node-red/user"
   cp /usr/src/app/flow/balena_flows.json /data/node-red/user/balena_flows.json
else
    echo "NOT copying balena_flows.json from repository to folder /data/node-red/user as this flow already exists in that folder !!"
fi

# Start app
DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket node-red --settings /usr/src/app/settings.js
