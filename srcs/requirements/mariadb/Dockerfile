FROM debian:buster

RUN apt update -y

RUN apt install mariadb-server -y

ARG MYSQL_ROOT_PASSWORD

ARG MYSQL_DATABASE

ARG MYSQL_USER

ARG MYSQL_PASSWORD

COPY ./tools/runningcmds.sh .

RUN chmod +x runningcmds.sh

RUN ./runningcmds.sh

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

CMD ["mysqld"]