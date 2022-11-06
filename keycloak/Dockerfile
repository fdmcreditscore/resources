FROM quay.io/keycloak/keycloak:latest
# USER keycloak
ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

RUN mkdir -p /opt/keycloak/data/import
COPY ./realm-export.json /opt/keycloak/data/import/
WORKDIR /opt/keycloak
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--import-realm"]
