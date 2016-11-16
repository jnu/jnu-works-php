FROM alpine:latest
MAINTAINER Joe Nudell <joenudell@gmail.com>

# Configure alpine repos
RUN echo "http://dl-1.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories; \
    echo "http://dl-2.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories; \
    echo "http://dl-3.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories; \
    echo "http://dl-4.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories; \
    echo "http://dl-5.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories; \
    echo "http://dl-2.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories; \
    echo "http://dl-3.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories; \
    echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories; \
    echo "http://dl-5.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories; \
    echo "ipv6" >> /etc/modules

# Install NginX, PHP5, PHP-FPM, MySQL
RUN apk add --update curl wget git mysql mysql-client \
    bash nginx ca-certificates \
    php5-fpm php5-json php5-zlib php5-xml php5-pdo php5-phar php5-openssl \
    php5-pdo_mysql php5-mysqli \
    php5-gd php5-iconv php5-mcrypt \
    php5-curl php5-openssl php5-json php5-dom php5-ctype && \
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
COPY ./ss /srv/www

CMD ["/run"]
