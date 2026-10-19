FROM nginx:alpine

ARG VCS_REF
ARG BUILD_DATE
ARG VCS_URL

LABEL org.opencontainers.image.title="FoodZone" \
      org.opencontainers.image.source="${VCS_URL}" \
      org.opencontainers.image.revision="${VCS_REF}" \
      org.opencontainers.image.created="${BUILD_DATE}"

COPY dist/ /usr/share/nginx/html/

EXPOSE 80
