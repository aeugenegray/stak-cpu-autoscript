#!/usr/bin/expect -f
spawn ./xmr-stak --currency cryptonight -o pool.macscoin.site:3333 -u MgTJuJaFrLMGuGU7NcgzXJPxUvMNXwZX7QN16nr29u8iRGaa3HybJ9QVrPTyqTBiZka5zSVec55Ac8C4ofE78TaNTFfEcYw -p x
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "0\r"
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "\r"
expect -re "Pool configuration stored in file 'pools.txt'\r"
set timeout 2
expect eof

