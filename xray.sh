#!/bin/sh
if [ ! -f UUID ]; then
  UUID="4cedb779-0619-4def-ad97-2f07d3e3a37b"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

