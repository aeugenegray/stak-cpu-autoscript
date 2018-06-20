#! /bin/bash
sudo yum -y groupinstall "Development Tools"
sudo yum install -y cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make vixie-cron crontabs
echo 'source /opt/rh/devtoolset-4/enable' >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/MarketCashME/XMR-Stak.gitt && mkdir XMR-stak/build
cd XMR-stak/build && cmake3 .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd bin
mv ~/stak-cpu-autoscript/expect-2.sh ~/stak-cpu-autoscript/XMR-stak/build/bin
expect ./expect-2.sh
tmux
trap "" 15
./xmr-stak --currency cryptonight_alloy -o mkt.mineallcrypto.com:7636 -u Mm1vqDWSZ5e9wL9M4VQf9KfqyU2n62xXHbcVd9n6wz62ctrp4uBw4Ta4kaVqvwtN28bALLfJfpudM1ocnHEGGjhwLVNDDFs -p x


