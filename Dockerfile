FROM docker.io/bitnami/nginx:1.24.0

USER 0
COPY --chown=1001:0 --chmod=770 ./src/ /opt/bitnami/nginx/html/
COPY --chown=1001:0 --chmod=660 ./nginx-static.conf /opt/bitnami/nginx/conf/server_blocks/default.conf
USER 1001
EXPOSE 8080
