#!/bin/sh

# Very simple Horizon sample edge service.
secretName="secret1"
secretFileName="/secrets/$secretName"
echo "secretFileName: $secretFileName"

while true; do
  key=$(cat ${secretFileName} | jq -r ".key")
  value=$(cat ${secretFileName} | jq -r ".value")

  echo "secretkey: $key, secretValue: $value"
  sleep 3
done
