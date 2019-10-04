#!/bin/bash

# Make the flow balena_flows.json available in the user library
mkdir -p /data/node-red/user || true
cp /usr/src/app/balena_flows.json /data/node-red/user/

# Start app
DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket node-red --settings /usr/src/app/settings.js
