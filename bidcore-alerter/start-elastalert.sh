#!/bin/bash
# Based on https://github.com/krizsan/elastalert-docker
echo "Waiting for Elasticsearch to startup"
while true; do
    curl ${ES_HOST}:${ES_PORT} 2>/dev/null && break
    sleep 1
done
echo "Starting Alerting"

# Set the timezone.
if [ "$SET_CONTAINER_TIMEZONE" = "true" ]; then
	unlink /etc/localtime
	ln -s /usr/share/zoneinfo/${CONTAINER_TIMEZONE} /etc/localtime && \
	echo "Container timezone set to: $CONTAINER_TIMEZONE"
else
	echo "Container timezone not modified"
fi

if [[ -n "${ES_USERNAME:-}" ]]
then
	flags="--user ${ES_USERNAME}:${ES_PASSWORD}"
else
	flags=""
fi

cd /opt/elastalert

if ! curl -f $flags ${ES_HOST}:${ES_PORT} >/dev/null 2>&1
then
	echo "Elasticsearch not available at ${ES_HOST}:${ES_PORT}"
else
	if ! curl -f $flags ${ES_HOST}:${ES_PORT}/elastalert_status >/dev/null 2>&1
	then
		echo "Creating Elastalert index in Elasticsearch..."
	    elastalert-create-index --index elastalert_status --old-index ""
	else
	    echo "Elastalert index already exists in Elasticsearch."
	fi
fi

python -m elastalert.elastalert --verbose
