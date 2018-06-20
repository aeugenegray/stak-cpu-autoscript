#!/usr/bin/expect -f
spawn ./xmr-stak --currency cryptonight_alloy -o minenice.newpool.pw:1100 -u AA6o9xqV3vbA7tWWAdicrdKQTbtXCMatDHPPeTm3bodkanqYC5xrtNgTTYfsJeubV2jBjiBx9U9TGCfqhTMjg7a6SfrA5te -p x
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "0\r"
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "\r"
expect -re "Pool configuration stored in file 'pools.txt'\r"
set timeout 60
expect eof

