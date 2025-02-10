#!/bin/bash
chmod 644 /usr/local/share/ca-certificates/verdi.crt
update-ca-certificates

tail -f /dev/null
