FROM nginx

RUN apt-get update -qq \
    && apt-get install -y \
                logrotate \
                dumb-init \
                vim \
    && rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/dumb-init", "sh", "-c", "service cron start; nginx -g 'daemon off;'"]
