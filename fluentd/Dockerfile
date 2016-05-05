FROM fluent/fluentd:latest

USER root
WORKDIR /
RUN apk add --update netcat-openbsd && rm -rf /var/cache/apk/*
COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

ENV PATH /home/ubuntu/ruby/bin:$PATH
RUN gem install fluent-plugin-elasticsearch

ADD fluent.conf /fluentd/etc/fluent.conf

CMD ["sh", "-c", "/tmp/entrypoint.sh"]
