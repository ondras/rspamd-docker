FROM alpine:3.23

RUN apk add --no-cache rspamd rspamd-proxy rspamd-controller rspamd-client
RUN mkdir /run/rspamd

VOLUME ["/var/lib/rspamd"]

EXPOSE 11332/tcp 11333/tcp 11334/tcp

ENTRYPOINT ["/usr/sbin/rspamd", "-f", "--insecure"]
