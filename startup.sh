#!/usr/bin/env bash
#systemctl daemon-reload
nginx -t

service nginx status

# service kanika-services start
# service kanika-services status

# service nginx start

python -m hypercorn app:app &

service nginx status

/usr/sbin/nginx