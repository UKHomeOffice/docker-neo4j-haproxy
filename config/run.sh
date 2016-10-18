#!/bin/bash

#expand any variables within proxy
eval proxy=\"$proxy\"
if [ -n "$proxy" ]; then
  echo "Configuring these proxies in the config: ${proxy}"
  
  node_dirty=$(echo $proxy | tr ";" "\n")
  n=0
  for node_clean in $node_dirty
  do 
    n=$((n+1))
    ENDPOINTS="    server s$n $node_clean maxconn 32 check check-ssl verify none \n$ENDPOINTS "
  done

  echo -e $ENDPOINTS
  sed -i -- "s|ENDPOINT|$ENDPOINTS|g" /etc/haproxy/haproxy.cfg

  #If Auth is plaintext then base64 encode
  if [[ $AUTH == *[:]* ]]; then
    AUTH=$(printf "$AUTH" | base64)  
  fi
  sed -i -- "s/AUTH/$AUTH/g" /etc/haproxy/haproxy.cfg
else
  echo "Proxy not set, please set the proxy env var"
  exit 1
fi
cat /etc/haproxy/haproxy.cfg

exec haproxy -f /etc/haproxy/haproxy.cfg -d

#[ -f "/etc/haproxy/haproxy.cfg" ] && cat /etc/haproxy/haproxy.cfg
