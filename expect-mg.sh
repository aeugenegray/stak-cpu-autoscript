#!/usr/bin/expect -f
spawn ./xmr-stak --currency cryptonight_v7 -o xat.mineallcrypto.com:7656 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "0\r"
expect -re "- Rig identifier for pool-side statistics (needs pool support). Can be empty:\r"
send -- "\r"
expect -re "Pool configuration stored in file 'pools.txt'\r"
set timeout 240
send \x03
spawn ./xmr-stak --currency cryptonight_v7 -o xat.mineallcrypto.com:7656 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
set timeout 240
send \x03
spawn ./xmr-stak --currency cryptonight_v7 -o xat.mineallcrypto.com:7656 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
set timeout 240
send \x03
spawn ./xmr-stak --currency cryptonight_v7 -o xat.mineallcrypto.com:7656 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
set timeout 240
send \x03
spawn ./xmr-stak --currency cryptonight_v7 -o xat.mineallcrypto.com:7656 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
set timeout 240
send \x03
spawn ./xmr-stak --currency cryptonight_v7 -o xat.mineallcrypto.com:7656 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
set timeout 240
send \x03
spawn ./xmr-stak --currency cryptonight_v7 -o xat.mineallcrypto.com:7656 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
set timeout 240
send \x03
spawn ./xmr-stak --currency cryptonight_v7 -o xat.mineallcrypto.com:7656 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
set timeout 240
send \x03
spawn ./xmr-stak --currency cryptonight_v7 -o xat.mineallcrypto.com:7656 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
set timeout 240
send \x03
spawn ./xmr-stak --currency cryptonight_v7 -o xat.mineallcrypto.com:7656 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
set timeout 240
send \x03
spawn ./xmr-stak --currency cryptonight_v7 -o xat.mineallcrypto.com:7656 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
set timeout 240
send \x03
spawn ./xmr-stak --currency cryptonight_v7 -o xat.mineallcrypto.com:7656 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
set timeout 240
send \x03
spawn ./xmr-stak --currency cryptonight_v7 -o xat.mineallcrypto.com:7656 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
expect eof

