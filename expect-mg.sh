#!/usr/bin/expect -f
spawn ./xmr-stak --currency cryptonight_heavy -o goro.clevery.xyz:10101 -u goroCoinVN6hYPfMr3vTdHi18RV3CzdryFCQbpeHwNYYZYoDMQfFVtm7VWtzgM5vahhiZzrYcK41EA7ktahb7P9mZEmXtVzTpmg3GT -p x
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "0\r"
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "\r"
expect -re "Pool configuration stored in file 'pools.txt'\r"
set timeout 180000
expect eof

