FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Adiciona novo config com porta 8080
RUN echo 'server { listen 8080; root /usr/share/nginx/html; index index.html; }' > /etc/nginx/conf.d/custom.conf

COPY . /usr/share/nginx/html

EXPOSE 8080

