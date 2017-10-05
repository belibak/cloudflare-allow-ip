#!/bin/bash
CFF=/tmp/cloudflare-allow.conf
curl https://www.cloudflare.com/ips-v4 > $CFF
curl https://www.cloudflare.com/ips-v6 >> $CFF
cat $CFF | sed -e 's/^/allow /g' | sed -e 's/$/;/g' > $CFF.tmp
mv $CFF.tmp $CFF
