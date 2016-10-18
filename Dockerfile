FROM alpine:3.4
MAINTAINER Giles Hinchcliff giles@rebelastronaut.co.uk
#get some basics running
RUN apk add --no-cache bash gawk sed grep bc coreutils ca-certificates

RUN apk --update add haproxy
ADD config/haproxy.cfg /etc/haproxy/haproxy.cfg
ADD config/run.sh /run.sh

ENTRYPOINT ["/run.sh"]
