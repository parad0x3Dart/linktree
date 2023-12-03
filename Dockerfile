FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /opt/www/index.html
COPY style.css /opt/www/style.css
ARG BUILD_DATE="Unknown"
ARG SOURCE_COMMIT="Unknown"
LABEL maintainer="parad0x3Dart" \
    org.opencontainers.image.title="ghcr.io/parad0x3dart/linktree" \
    org.opencontainers.image.url="https://github.com/parad0x3Dart/linktree" \
    org.opencontainers.image.created="${BUILD_DATE}" \
    org.opencontainers.image.source="https://github.com/parad0x3Dart/linktree" \
    org.opencontainers.image.revision="${SOURCE_COMMIT}" \
    org.opencontainers.image.licenses="MIT"