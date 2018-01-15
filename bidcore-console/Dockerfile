FROM docker.elastic.co/kibana/kibana:6.1.1

ENV ELASTICSEARCH_URL=http://bidcore-elasticsearch:9200
COPY kibana.yml /usr/share/kibana/config/kibana.yml
COPY bidconsole.svg /tmp/bidconsole.svg
RUN ./bin/kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.24/logtrail-6.1.1-0.1.24.zip
COPY logtrail.json /usr/share/kibana/plugins/logtrail/logtrail.json

