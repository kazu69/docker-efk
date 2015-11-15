FROM fluent/fluentd:latest

USER root
WORKDIR /
RUN apt-get update -y && apt-get install -y netcat

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

ENV PATH /home/ubuntu/ruby/bin:$PATH
RUN gem install fluent-plugin-elasticsearch

ADD fluent.conf /fluentd/etc/fluent.conf

CMD ["sh", "-c", "/tmp/entrypoint.sh"]
