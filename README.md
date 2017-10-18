# BiDcore Console

[![Build Status](https://travis-ci.org/bidcore/bidcore-console.svg?branch=master)](https://travis-ci.org/bidcore/bidcore-console)

This is the BiDcore Console, based on the [ELK Stack](https://www.elastic.co/products). It provides a default configuration to get started with logs and metrics monitoring with ELK as well as some nice dashboards.

## Quick Start

Start everything by running `docker-compose up -d` in the `bootstrap/` directory, then access Kibana at [localhost:5601](http://localhost:5601) and Zipkin at [localhost:9411](http://localhost:9411).

## Contributing

PRs are welcome ! When contributing, make sure you force build and restart everything with `docker-compose down && docker-compose build --no-cache && docker-compose up`.

## Images hosted on Docker Hub

- **bidcore/bidcore-console** [![Automated build](https://img.shields.io/docker/automated/bidcore/bidcore-console.svg)](https://hub.docker.com/r/bidcore/bidcore-console/) [![Docker Pulls](https://img.shields.io/docker/pulls/bidcore/bidcore-console.svg)](https://hub.docker.com/v2/repositories/bidcore/bidcore-console/)
- **bidcore/bidcore-elasticsearch** [![Automated build](https://img.shields.io/docker/automated/bidcore/bidcore-elasticsearch.svg)](https://hub.docker.com/r/bidcore/bidcore-elasticsearch/) [![Docker Pulls](https://img.shields.io/docker/pulls/bidcore/bidcore-elasticsearch.svg)](https://hub.docker.com/v2/repositories/bidcore/bidcore-elasticsearch/)
- **bidcore/bidcore-logstash** [![Automated build](https://img.shields.io/docker/automated/bidcore/bidcore-logstash.svg)](https://hub.docker.com/r/bidcore/bidcore-logstash/) [![Docker Pulls](https://img.shields.io/docker/pulls/bidcore/bidcore-logstash.svg)](https://hub.docker.com/v2/repositories/bidcore/bidcore-logstash/)
- **bidcore/bidcore-zipkin** [![Automated build](https://img.shields.io/docker/automated/bidcore/bidcore-zipkin.svg)](https://hub.docker.com/r/bidcore/bidcore-zipkin/) [![Docker Pulls](https://img.shields.io/docker/pulls/bidcore/bidcore-zipkin.svg)](https://hub.docker.com/v2/repositories/bidcore/bidcore-zipkin/)
- **bidcore/bidcore-alerter** [![Automated build](https://img.shields.io/docker/automated/bidcore/bidcore-alerter.svg)](https://hub.docker.com/r/bidcore/bidcore-alerter/) [![Docker Pulls](https://img.shields.io/docker/pulls/bidcore/bidcore-alerter.svg)](https://hub.docker.com/v2/repositories/bidcore/bidcore-alerter/)
- **bidcore/bidcore-curator** [![Automated build](https://img.shields.io/docker/automated/bidcore/bidcore-curator.svg)](https://hub.docker.com/r/bidcore/bidcore-curator/) [![Docker Pulls](https://img.shields.io/docker/pulls/bidcore/bidcore-curator.svg)](https://hub.docker.com/v2/repositories/bidcore/bidcore-curator/)
- **bidcore/bidcore-import-dashboards** [![Automated build](https://img.shields.io/docker/automated/bidcore/bidcore-import-dashboards.svg)](https://hub.docker.com/r/bidcore/bidcore-import-dashboards/) [![Docker Pulls](https://img.shields.io/docker/pulls/bidcore/bidcore-import-dashboards.svg)](https://hub.docker.com/v2/repositories/bidcore/bidcore-import-dashboards/)
