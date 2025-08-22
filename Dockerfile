FROM caddy:builder-alpine⁠ AS builder

RUN xcaddy build \
    --with github.comhttps://github.com/caddy-dns/dynu

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
