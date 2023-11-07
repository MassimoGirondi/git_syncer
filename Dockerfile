FROM alpine:latest AS base
RUN apk add git bash openssh
RUN rm -rf /var/cache/apk/*

FROM base
COPY syncer.sh /
ENV PULL_URL=pull
ENV PUSH_URL=push
ENV PULL_BRANCH=main
ENV PUSH_BRANCH=main
VOLUME /workspace
WORKDIR /workspace
ENTRYPOINT bash /syncer.sh
