#!/bin/bash
cd $SERVER_CONFIG_MOUNT
PARSED=$(echo "${STARTUP}" | sed -e 's/{{/${/g' -e 's/}}/}/g' | eval echo "$(cat -)")
echo $PARSED
$PARSED