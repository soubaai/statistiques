FROM alpine-java:base
MAINTAINER baeldung.com
COPY files/staistiques.jar /opt/spring-cloud/lib/
COPY files/spring-cloud-config-server-entrypoint.sh /opt/spring-cloud/bin/
