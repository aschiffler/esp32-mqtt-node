#!/bin/bash
openssl s_client -connect $1 -showcerts </dev/null | openssl x509 -outform pem > main/mqtt_broker_cert.pem
echo "cert from $1 saved"