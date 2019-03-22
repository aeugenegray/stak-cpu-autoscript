#!/usr/bin/expect -f
spawn ./xmr-stak --currency cryptonight_lite_v7 -o beta.ultranote.org:5555 -u Xun3UUGiLqpiD3guzBx7Y2HFxx5B5QzVH9Feh2CKALte7uju2vi5xE6dhCTaSTCgwsdBhfZugGw3nKs2aAcKvcCW1vqRQ1jyKE -p x
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "0\r"
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "\r"
expect -re "Pool configuration stored in file 'pools.txt'\r"
set timeout 2
expect eof

