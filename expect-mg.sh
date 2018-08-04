#!/usr/bin/expect -f
spawn ./xmr-stak --currency cryptonight_lite_v7 -o spot.mineallcrypto.com:7586 -u AYrUmTkCNaTcKu3YyTqnwARJ5rpFwn1rodFsKji2hgcn11iGWXgRQ12fFLWE3DCL3Mg2QCfNY5pLcDLm6LVYTLwdF79gVUd   -p x
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "0\r"
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "\r"
expect -re "Pool configuration stored in file 'pools.txt'\r"
set timeout 12000
expect eof

