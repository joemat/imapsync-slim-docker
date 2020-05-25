FROM alpine

RUN apk upgrade && \
    apk add imapsync && \
    rm -vrf /var/cache/apk/*

USER nobody

ENTRYPOINT [ "/usr/bin/imapsync" ]