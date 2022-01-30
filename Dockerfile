FROM "ghcr.io/xu-cheng/texlive-full"

RUN apk --no-cache add make

WORKDIR /data

CMD tail -f /dev/null
