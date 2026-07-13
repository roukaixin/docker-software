ARG MIHOMO_VERSION=latest

FROM metacubex/mihomo:${MIHOMO_VERSION}

ARG REDIRECT_PKG_HANDLER_VERSION
ARG REDIRECT_PKG_URL=https://github.com/ThisSeanZhang/landscape/releases/download/${REDIRECT_PKG_HANDLER_VERSION}/redirect_pkg_handler-x86_64-musl

RUN apk update && \
    apk add --no-cache libgcc libelf s6-overlay

RUN wget -O /redirect_pkg_handler ${REDIRECT_PKG_URL} && \
    chmod +x /redirect_pkg_handler \
    ip rule add fwmark 0x1/0x1 lookup 100 \
    ip route add local default dev lo table 100 \
    ip -6 rule add fwmark 0x1 lookup 106 \
    ip -6 route add local ::/0 dev lo table 106 \

COPY rootfs/ /

ENTRYPOINT [ "/init" ]
