#!/bin/bash

docker exec -it bidcoreconsole_bidcore-alerter_1 elastalert-test-rule rules/$1
