FROM nginx:alpine
LABEL maintainer="St. Wissel <stw@linux.com>" \
    org.label-schema.docker.dockerfile="/Dockerfile" \
    org.label-schema.license="MIT" \
    org.label-schema.name="NGINX JDK Alpine" \
    org.label-schema.vcs-type="Git" \
    org.label-schema.vcs-url="https://github.com/Stwissel/alpine-jdk-nginx"

# Base image combining an OpenJDK with an nginx installation
# Mainly used for the SFDX proxy project. Might change versions
# of JDK and nginx as needs arises

# Java
USER root
RUN apk update
RUN apk add openjdk8
COPY static-html/* /usr/share/nginx/html/