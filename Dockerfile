FROM ubuntu:bionic

RUN apt update && apt install -y linux-igd

ENTRYPOINT upnpd -f $EXTIF $INTIF

CMD tail -f /dev/null
