#!/bin/sh
# From https://github.com/wangxian/alpine-mysql/blob/master/startup.sh

MYSQL_ROOT_PASSWORD=Highlandrose1!

if [ -d /var/lib/mysql/mysql ]; then
  echo "[i] MySQL directory already present, skipping creation"
  /usr/bin/mysqld --user=root --console
else
  echo "[i] MySQL data directory not found, restoring from backups"

  mysql_install_db --user=root > /dev/null

  # if [ ! -d "/run/mysqld" ]; then
  #   mkdir -p /run/mysqld
  # fi

  /usr/bin/mysqld --user=root --console &

  # Wait for mysql to come up before interacting with it via client.
  while ! mysqladmin ping -hlocalhost --silent; do
    echo "Waiting for mysqld to come up ..."
    sleep 1
  done

  mysqladmin -uroot create joenoodles
  mysql -uroot joenoodles < /var/backups/sql/joenoodles.sql
  mysql -uroot -e "CREATE USER 'joenoodles'@'localhost' IDENTIFIED BY 'readonly'; GRANT SELECT ON joenoodles.* to 'joenoodles'@'localhost'; FLUSH PRIVILEGES;"

  # Set root password
  mysqladmin -uroot password $MYSQL_ROOT_PASSWORD

fi
