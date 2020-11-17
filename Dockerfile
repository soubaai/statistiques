FROM alpine-java:base
MAINTAINER baeldung.com
COPY files/staistiques.jar /opt/spring-cloud/lib/
COPY files/spring-cloud-config-server-entrypoint.sh /opt/spring-cloud/bin/
ENV SPRING_APPLICATION_JSON= \
  '{"spring": {"cloud": {"config": {"server": \
  {"git": {"uri": "/var/lib/spring-cloud/config-repo", \
  "clone-on-start": true}}}}}}'
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/opt/spring-cloud/lib/spring-cloud-config-server.jar"]
VOLUME /var/lib/spring-cloud/config-repo
EXPOSE 8888