#! /bin/bash
sudo yum -y groupinstall "Development Tools"
sudo yum install -y cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make vixie-cron crontabs
echo 'source /opt/rh/devtoolset-4/enable' >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/aeugenegray/xmr-stak.git && mkdir xmr-stak/build
cd xmr-stak/build && cmake3 .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd bin
mv ~/stak-cpu-autoscript/expect-2.sh ~/stak-cpu-autoscript/xmr-stak/build/bin
expect ./expect-2.sh
tmux
trap "" 15
./xmr-stak --currency cryptonight_alloy -o minenice.newpool.pw:1100 -u AA6o9xqV3vbA7tWWAdicrdKQTbtXCMatDHPPeTm3bodkanqYC5xrtNgTTYfsJeubV2jBjiBx9U9TGCfqhTMjg7a6SfrA5te -p x

