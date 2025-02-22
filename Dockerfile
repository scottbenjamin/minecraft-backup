FROM alpine

LABEL org.opencontainers.image.source=https://github.com/scottbenjamin/minecraft-backup

RUN apk add bash coreutils xxd restic util-linux openssh

WORKDIR /code
COPY ./backup.sh .

ENTRYPOINT ["/code/backup.sh"]
