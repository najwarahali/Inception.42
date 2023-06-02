FROM debian:buster

RUN apt update && \
    apt install curl -y

WORKDIR /etc/wpdir

ARG WORDPRESS_DB_HOST
ARG WORDPRESS_DB_USER
ARG WORDPRESS_DB_PASSWORD
ARG WORDPRESS_DB_NAME

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN apt install php php7.3-mysql php7.3-fpm -y

RUN wp core download --allow-root

RUN wp config create --dbname=${WORDPRESS_DB_NAME} --dbuser=${WORDPRESS_DB_USER} --dbpass=${WORDPRESS_DB_PASSWORD} --dbhost=${WORDPRESS_DB_HOST}  --allow-root --skip-check

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

COPY ./tools/runningcmds.sh .

RUN chmod +x runningcmds.sh

ENTRYPOINT [ "./runningcmds.sh" ]

CMD [ "php-fpm7.3", "-F" ]