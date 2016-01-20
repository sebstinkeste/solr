#!/bin/bash

set -e
# Set the SOLR_TOOL_HOST variable for use when connecting to a running Solr instance

if [ "$USER" = "$SOLR_USER" ]; then
    ln -sf /usr/share/zoneinfo/$LOCALTIME /etc/localtime
fi


if [ "$SOLR_CORE" ]; then
	bin/solr start -f 
fi

# /docker-entrypoint.sh ${*}

