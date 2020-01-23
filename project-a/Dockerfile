FROM java:openjdk-8-jre 
MAINTAINER myname 
EXPOSE 9000 
RUN mkdir -p /opt/docker/bin && \
    mkdir -p /opt/docker/conf && \
    mkdir -p /opt/docker/lib
COPY bin /opt/docker/bin
COPY conf /opt/docker/conf
COPY lib /opt/docker/lib
RUN ls -last /opt/docker/bin && chown -R daemon:daemon /opt/docker && \
    chmod +x /opt/docker/bin/project-a
USER daemon 
ENTRYPOINT ["/opt/docker/bin/project-a"]