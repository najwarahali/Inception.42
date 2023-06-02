FROM debian:buster

RUN apt update && \
    apt install nginx -y

WORKDIR /etc/nginx/ssl

COPY ./tools/selfsigned-nginx.crt .

COPY ./tools/selfsigned-nginx.key .

COPY ./conf/default /etc/nginx/sites-available/

CMD ["nginx", "-g", "daemon off;"]