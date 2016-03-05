FROM bbania/nginx:latest
MAINTAINER "Bart Bania" <contact@bartbania.com>

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./odoo.conf /etc/nginx/conf.d/default.conf

VOLUME /etc/nginx/

EXPOSE 80 443

CMD ["nginx", "&"]

