FROM nginx:alpine
WORKDIR /var/okteto/sync
COPY default.conf /etc/nginx/conf.d/default.conf
COPY start start
COPY index.html /var/okteto/sync
CMD "./nginx"

