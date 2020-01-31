FROM alpine

RUN apk add --update syslog-ng

ADD syslog-ng.conf /etc/syslog-ng/syslog-ng.conf

EXPOSE 514/tcp 514/udp

ENTRYPOINT ["/usr/sbin/syslog-ng", "-F", "-f", "/etc/syslog-ng/syslog-ng.conf"]