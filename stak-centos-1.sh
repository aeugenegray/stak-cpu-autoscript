#! /bin/bash
sudo yum -y groupinstall "Development Tools"
sudo yum install -y cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make vixie-cron crontabs
echo 'source /opt/rh/devtoolset-4/enable' >> ~/.bashrc
source ~/.bashrc
git clone https://github.com/MrNakamoto/xmr-stak.git && mkdir xmr-stak/build
cd xmr-stak-triton/build && cmake3 .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd bin
mv ~/xmr-stak-triton/expect-2.sh ~/stak/xmr-stak/build/bin
expect ./expect-2.sh
tmux
trap "" 15
./xmr-stak --currency cryptonight_lite_v7 -o triton.clevery.xyz:9201 -u Tw1Wf4BYraTYsWMA7SRiQbTLHpzoVueedCsDBjXAF6tZC9Fjjw7s1pnhTfMjeAMcZJ7JMKipyfSTYdRiAAagUNae28hB14UFA -p x


