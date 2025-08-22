FROM caddy:latest-builder AS builder

RUN xcaddy build \
    --with github.comhttps://github.com/caddy-dns/dynu

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
