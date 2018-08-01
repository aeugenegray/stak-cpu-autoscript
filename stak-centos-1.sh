#! /bin/bash
# Install Depends
sudo yum -y groupinstall "Development Tools"
sudo yum install -y screen cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make vixie-cron crontabs
# Enables devtoolset-4
echo 'source /opt/rh/devtoolset-4/enable' >> ~/.bashrc
# Reloads bashrc without reboot
source ~/.bashrc
# Clone & Intsall XMR Stak
git clone https://github.com/aeugenegray/xmr-stak.git && mkdir xmr-stak/build
cd xmr-stak/build && cmake3 .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd bin
# Move Expect to Current Folder
mv ~/stak-cpu-autoscript/expect-2.sh ~/stak-cpu-autoscript/xmr-stak/build/bin
# Run Expect
expect ./expect-2.sh
# TMux Session
screen
# Trap sigterm
trap "" 15
# Run Script ** CHANGE POOL & ADDRESS HERE **
spawn ./xmr-stak --currency cryptonight_lite_v7 -o lch-us.walpool.com:5088 -u cashFZEviaRfxNFBkbcZm45emNqk26Nb942Fn6NnrCAwRin8aEQTuAceKyTxtsWkumYWphYMK3kSkDhA6APysyMe6HFMkjDFhP -p x

