#!/bin/sh

wp core install --url=${WORDPRESS_URL} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_ADMIN_USER} --admin_password=${WORDPRESS_ADMIN_PW} --admin_email=${WORDPRESS_ADMIN_EMAIL} --allow-root

wp user create ${WORDPRESS_SECOND_USER_NAME} ${WORDPRESS_SECOND_USER_EMAIL} --role=author --allow-root

service php7.3-fpm start

service php7.3-fpm stop

exec "$@"