FROM caddy:2.8-alpine
COPY Caddyfile /etc/caddy/Caddyfile
COPY public /srv
# Railway provides $PORT; Caddy reads it in the Caddyfile (defaults to 8080 locally).
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
