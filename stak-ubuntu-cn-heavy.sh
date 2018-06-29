#! /bin/bash
# Install Depends
sudo apt-get -y groupinstall "Development Tools"
sudo apt-get install -y cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make vixie-cron crontabs
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
tmux
# Trap sigterm
trap "" 15
# Run Script ** CHANGE POOL & ADDRESS HERE **
./xmr-stak --currency cryptonight_heavy -o bxb.mineallcrypto.com:7686 -u bxcjGe8gYig5V9f5a7tmQUXxYw2owbvtLWmfv3KVNLHUUS1Sdxfr4R9SpKWX1kdYTVCq34wDkne1KBAcjzmwSuV21hgdYDe4h  -p x

