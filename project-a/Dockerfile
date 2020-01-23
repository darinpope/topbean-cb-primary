FROM java:openjdk-8-jre 
MAINTAINER myname 
EXPOSE 9000 
COPY target/universal/stage /opt/docker 
RUN chown -R daemon:daemon /opt/docker && \
    chmod +x /opt/docker/bin/project-a
USER daemon 
ENTRYPOINT ["/opt/docker/bin/project-a"]