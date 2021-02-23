FROM nginx:1.18.0-alpine

RUN apk update \
    && apk add --no-cache zsh

RUN rm -f /etc/nginx/conf.d/default.conf 

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80 