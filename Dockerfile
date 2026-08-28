FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY assets/    /usr/share/nginx/html/assets/
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
