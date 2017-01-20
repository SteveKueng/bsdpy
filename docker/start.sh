#!/bin/bash
# /usr/local/bin/nfs-client
sleep 2
service nginx start
/usr/sbin/in.tftpd -l --permissive /nbi -B ${TFTP_MAX_BLOCKSIZE}
cd /bsdpy
git pull
./bsdpserver.py -i ${DOCKER_BSDPY_IFACE} -r ${DOCKER_BSDPY_PROTO} &
sleep 2
tail -f /var/log/bsdpserver.log
