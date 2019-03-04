FROM nginx

RUN apt-get update -qq \
    && apt-get -y install logrotate dumb-init\
    && rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/dumb-init", "sh", "-c", "service cron start; nginx -g 'daemon off;'"]
