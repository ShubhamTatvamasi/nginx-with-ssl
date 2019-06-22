FROM nginx:stable-alpine

ADD ./ssl/ /ssl/

ADD ./nginx.conf /etc/nginx/conf.d/default.conf
