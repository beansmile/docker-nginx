FROM nginx

RUN apt-get update -qq \
  && apt-get -y install logrotate \
  && rm -rf /var/lib/apt/lists/*

CMD service cron start && nginx -g 'daemon off;'
