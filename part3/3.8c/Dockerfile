FROM docker:dind
RUN apk add git openssh-client && mkdir -p /home/dockerpublish/.docker
COPY entrypoint.sh /home/dockerpublish/
VOLUME /home/dockerpublish/.docker
WORKDIR /home/dockerpublish
RUN chmod -R 777 /home/dockerpublish
ENTRYPOINT ["./entrypoint.sh"]



