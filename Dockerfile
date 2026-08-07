FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
# Render injects PORT (default 10000); make nginx listen on it
CMD ["sh", "-c", "sed -i \"s/listen       80;/listen ${PORT:-80};/\" /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
