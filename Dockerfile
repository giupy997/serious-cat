FROM nginx:alpine
# Render injects PORT (default 10000); the nginx entrypoint runs envsubst
# on /etc/nginx/templates/*.template into /etc/nginx/conf.d/*.conf
ENV PORT=80
COPY default.conf.template /etc/nginx/templates/default.conf.template
COPY index.html /usr/share/nginx/html/index.html
