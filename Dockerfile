# ponytail: nginx alpine is the laziest correct server — no build step, no npm, just files.
FROM nginx:alpine

LABEL maintainer="Purrple-hub <github.com/Purrple-hub>"
LABEL description="Stupidly large prompt collection — served boringly correctly."

# Copy prompts + docs into nginx html
COPY Prompts/ /usr/share/nginx/html/prompts/
COPY README.md /usr/share/nginx/html/README.md
COPY LICENSE /usr/share/nginx/html/LICENSE

# Minimal nginx config — autoindex so you can browse prompts like a file server
RUN echo 'server { \
    listen 80; \
    root /usr/share/nginx/html; \
    index README.md; \
    autoindex on; \
    autoindex_exact_size off; \
    location / { try_files $uri $uri/ =404; } \
    location ~ \.md$ { add_header Content-Type text/plain; } \
}' > /etc/nginx/conf.d/default.conf

EXPOSE 80

# Healthcheck for the humans who forget docker ps
HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
