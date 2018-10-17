#!/bin/sh

# Set up config file from environment variables, if provided.
if [[ -n $RANCHER_URL && -n $RANCHER_TOKEN && -n $RANCHER_SECRETKEY && -n $RANCHER_PROJECT ]]; then
  printf "Setting config from environment variables.\n"
  config="{\"Servers\":{\"env-var\":{\"tokenKey\":\"$RANCHER_TOKEN:$RANCHER_SECRETKEY\",\"secretKey\":\"$RANCHER_SECRETKEY\",\"accessKey\":\"$RANCHER_TOKEN\",\"url\":\"$RANCHER_URL\",\"project\":\"$RANCHER_PROJECT\",\"cacert\":\"\"}},\"CurrentServer\":\"env-var\"}"
  echo $config > $HOME/.rancher/cli2.json
fi

printf "Running rancher %s\n" "$*"
exec rancher "$@"
