#! /bin/bash
# Install Depends
sudo yum -y groupinstall "Development Tools"
sudo yum install -y cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make vixie-cron crontabs
# Enables devtoolset-4
echo 'source /opt/rh/devtoolset-4/enable' >> ~/.bashrc
# Reloads bashrc
source ~/.bashrc
# Installs xmr-stak Market Cash
git clone https://github.com/MarketCashME/XMR-Stak.git && mkdir XMR-Stak/build
cd XMR-Stak/build && cmake3 .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd bin
# Moves and Runs Execute Script
mv ~/stak-cpu-autoscript/expect-2.sh ~/stak-cpu-autoscript/XMR-Stak/build/bin
expect ./expect-2.sh
# Opens tmux session
tmux
# Trap sigterm
trap "" 15
# CHANGE YOUR ALGO, POOL & USER BELOW **
./xmr-stak --currency cryptonight_marketcash -o mkt.mineallcrypto.com:7636 -u Mm1vqDWSZ5e9wL9M4VQf9KfqyU2n62xXHbcVd9n6wz62ctrp4uBw4Ta4kaVqvwtN28bALLfJfpudM1ocnHEGGjhwLVNDDFs -p x


