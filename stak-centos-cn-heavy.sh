#! /bin/bash
# Install Depends
sudo yum -y groupinstall "Development Tools"
sudo yum install -y cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make vixie-cron crontabs
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
./xmr-stak --currency cryptonight_heavy -o xhv.mineallcrypto.com:6046 -u XA4tS3ffGZR6AqiygDZptz8nc93Jm6Xsr9gwBya6REyH6eC4FTz4kQRHiLXt7gtUcAB35k1Bodvnf6b7C4FP7HM533bn1w9fk  -p x
