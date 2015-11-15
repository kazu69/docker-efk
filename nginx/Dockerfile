FROM nginx
ADD default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html
ADD index.html /var/www/html/index.html

RUN apt-get update -y && apt-get install -y netcat

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

CMD [ "sh", "-c", "/tmp/entrypoint.sh" ]
