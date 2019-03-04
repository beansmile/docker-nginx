FROM nginx

RUN apt-get update -qq \
    && apt-get -y install logrotate \
    && rm -rf /var/lib/apt/lists/* \
    && wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.2/dumb-init_1.2.2_amd64 \
    && chmod +x /usr/local/bin/dumb-init

CMD service cron start && nginx -g 'daemon off;'
