#!/bin/bash
cd $(dirname $0)
exec ./jmeter.sh -Djava.rmi.server.hostname=127.0.0.1 \
  -Jremote_hosts=127.0.0.1:55501 \
  -Jclient.rmi.localport=55512 \
  -Jmode=Batch \
  -Jnum_sample_threshold=250 \
  -server.rmi.ssl.disable=true \
  "$@"