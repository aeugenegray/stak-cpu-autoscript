#!/usr/bin/expect -f
spawn ./xmr-stak --currency cryptonight_lite_v7 -o lch-us.walpool.com:5088 -u cashFZEviaRfxNFBkbcZm45emNqk26Nb942Fn6NnrCAwRin8aEQTuAceKyTxtsWkumYWphYMK3kSkDhA6APysyMe6HFMkjDFhP -p x
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "0\r"
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "\r"
expect -re "Pool configuration stored in file 'pools.txt'\r"
set timeout 180
expect eof

