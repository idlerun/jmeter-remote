#!/bin/bash
cd $(dirname $0)
if [[ ! -d .jmeter ]] || [[ ! -d .jmeter/apache-jmeter-4.0 ]]; then
  echo "Downloading jmeter.."
  mkdir -p .jmeter
  pushd .jmeter &>/dev/null
  curl -Ss http://muug.ca/mirror/apache-dist/jmeter/binaries/apache-jmeter-4.0.tgz | pv | tar x
  popd
fi

exec .jmeter/apache-jmeter-4.0/bin/jmeter "$@"