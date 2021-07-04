FROM alpine:3.14.0

WORKDIR /app

RUN apk --no-cache add --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community terraform \
    && addgroup -S infrastructure && adduser -S infrastructure -G infrastructure

COPY --chown=infrastructure:infrastructure . .

ENTRYPOINT [ "terraform" ]
