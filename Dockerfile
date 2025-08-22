LABEL org.opencontainers.image.source https://github.com/mantralunar/caddy-dynu
FROM caddy:builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/dynu

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
