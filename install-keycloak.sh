#!/bin/sh

kubectl create ns keycloak

helm -n keycloak install keycloak-db bitnami/postgresql --values ./keycloak-db-values.yaml
helm -n keycloak install keycloak codecentric/keycloakx --values ./keycloak-server-values.yaml
