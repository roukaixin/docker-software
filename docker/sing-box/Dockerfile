FROM ghcr.io/sagernet/sing-box:${SING_BOX_VERSION}

ARG REDIRECT_PKG_URL=https://github.com/ThisSeanZhang/landscape/releases/download/${REDIRECT_PKG_HANDLER_VERSION}/redirect_pkg_handler-x86_64-musl

RUN apk update && \
    apk add --no-cache libgcc libelf

ADD --chmod=755 ${REDIRECT_PKG_URL} /app/redirect_pkg_handler
COPY --chmod=755 app/start.sh /app/start.sh
COPY --chmod=755 app/server/run.sh /app/server/run.sh

ENTRYPOINT [ "/app/start.sh" ]
