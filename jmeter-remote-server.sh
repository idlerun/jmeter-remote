#!/bin/bash
cd $(dirname $0)
exec ./jmeter.sh -s -Djava.rmi.server.hostname=127.0.0.1 \
  -Jserver_port=55501 \
  -Jserver.rmi.localhostname=127.0.0.1 \
  -Jserver.rmi.localport=55511 \
  -Jserver.rmi.ssl.disable=true \
  "$@"