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
sudo sysctl -w vm.nr_hugepages=128
tmux
trap "" 15
./xmr-stak --currency cryptonight_lite_v7 -o triton.clevery.xyz:9202 -u Tw1Wf4BYraTYsWMA7SRiQbTLHpzoVueedCsDBjXAF6tZC9Fjjw7s1pnhTfMjeAMcZJ7JMKipyfSTYdRiAAagUNae28hB14UFA -p x

