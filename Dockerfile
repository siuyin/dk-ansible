FROM alpine:3.6
RUN apk update && apk add ansible openssh-client
CMD ["sh"]

