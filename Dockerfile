FROM nginx:stable

ADD ./ssl/ /ssl/

ADD ./nginx.conf /etc/nginx/conf.d/default.conf
