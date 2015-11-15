FROM kibana:latest

RUN apt-get update && apt-get install -y netcat

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

COPY config/kibana.yml /opt/kibana/config/kibana.yml

RUN kibana plugin --install elastic/sense

CMD ["/tmp/entrypoint.sh"]
