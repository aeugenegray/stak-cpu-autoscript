#!/usr/bin/expect -f
spawn ./xmr-stak --currency cryptonight_heavy -o 193.160.227.12:4021 -u bxcjGe8gYig5V9f5a7tmQUXxYw2owbvtLWmfv3KVNLHUUS1Sdxfr4R9SpKWX1kdYTVCq34wDkne1KBAcjzmwSuV21hgdYDe4h -p x
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "0\r"
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "\r"
expect -re "Pool configuration stored in file 'pools.txt'\r"
set timeout 60
expect eof

