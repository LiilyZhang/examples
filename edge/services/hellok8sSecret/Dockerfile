FROM alpine:3.16

RUN apk --no-cache --update add jq bash

COPY *.sh /
WORKDIR /
CMD /service.sh
