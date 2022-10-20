#!/bin/bash
openssl s_client -showcerts -connect $1 </dev/null 2>/dev/null|openssl x509 -outform PEM >main/mqtt_broker_cert.pem
echo "cert from $1 saved"