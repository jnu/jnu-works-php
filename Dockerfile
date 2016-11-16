FROM alpine:latest
MAINTAINER Joe Nudell <joenudell@gmail.com>

# Install NginX, PHP5, PHP-FPM, MySQL
# NOTE: hack to change repo since old one is down.
RUN sed -i -e 's/dl-cdn/dl-4/' /etc/apk/repositories && \
    apk add --update curl wget git mysql mysql-client \
    bash nginx ca-certificates \
    php-fpm php-json php-zlib php-xml php-pdo php-phar php-openssl \
    php-pdo_mysql php-mysqli \
    php-gd php-iconv php-mcrypt \
    php-curl php-openssl php-json php-dom php-ctype && \
    apk add -u musl && \
    mkdir -p /var/lib/mysql && \
    mkdir -p /etc/mysql/conf.d && \
    mkdir -p /etc/nginx/conf.d && \
    mkdir -p /var/run/mysql/ && \
    mkdir -p /var/run/php5-fpm/ && \
    mkdir -p /etc/php5/fpm/pool.d/ && \
    rm -rf /var/cache/apk/*

# Add config files
ADD conf/nginx/nginx.conf /etc/nginx/
ADD conf/nginx/default.conf /etc/nginx/conf.d/
ADD conf/nginx/fastcgi_params /etc/nginx/
ADD conf/php/default.conf /etc/php5/fpm/pool.d/
# ADD conf/php/php-fpm.conf /etc/php/
ADD conf/mysql/my.cnf /etc/mysql/
ADD util/run /
RUN chmod +x /run

# Poke holes
EXPOSE 80
EXPOSE 3306
WORKDIR /srv/www
VOLUME ["/data/logs", "/var/lib/mysql", "/etc/mysql/conf.d/"]

# Add content
CP ./ss /srv/www

CMD ["/run"]
