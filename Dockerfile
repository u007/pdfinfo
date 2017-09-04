FROM alpine:3.6

# originally from https://github.com/ivotron/docker-pdftotext
MAINTAINER James <james@mercstudio.com>

RUN apk add --no-cache poppler-utils

RUN mkdir /data
VOLUME "/data"

ENTRYPOINT ["/usr/bin/pdfinfo"]

#CMD ["-layout", "-", "-"] 

