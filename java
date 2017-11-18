#!/bin/bash
# Purge LESMI_HTTP_PROXY into IP and port.
# LESMI_HTTP_PROXY should be "$IP:$PORT"

if [[ $LESMI_HTTP_PROXY == "" ]] ; then
  echo "WARN: You have to specify LESMI_HTTP_PROXY environment variable before using this command."
  JAVA_BIN $@
else
  IP=${LESMI_HTTP_PROXY%:*}
  PORT=${LESMI_HTTP_PROXY#*:}
  JAVA_BIN -Dhttp.proxyHost=$IP -Dhttp.proxyPort=$PORT $@
fi

