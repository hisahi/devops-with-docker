FROM python:3.7.3-alpine3.9 as build
RUN apk add gcc musl-dev libxml2-dev libxslt-dev ffmpeg
RUN python3 -m pip install --upgrade yle-dl
RUN adduser -S yledl
RUN mkdir /dl && chown yledl /dl
USER yledl
WORKDIR /dl
ENTRYPOINT ["yle-dl"]


