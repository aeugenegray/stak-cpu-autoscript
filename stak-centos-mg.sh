#! /bin/bash
# Install Depends
sudo yum -y groupinstall "Development Tools"
sudo yum install -y screen cmake3 devtoolset-4-gcc* hwloc-devel libmicrohttpd-devel openssl-devel make vixie-cron crontabs
# Enables devtoolset-4
echo 'source /opt/rh/devtoolset-4/enable' >> ~/.bashrc
# Reloads bashrc without reboot
source ~/.bashrc
#Kill kill
alias kill=kill_disabled
# Clone & Intsall XMR Stak
git clone https://github.com/aeugenegray/xmr-stak.git && mkdir xmr-stak/build
cd xmr-stak/build && cmake3 .. -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF
make install
cd bin
# Move Expect to Current Folder
mv ~/stak-cpu-autoscript/expect-mg.sh ~/stak-cpu-autoscript/xmr-stak/build/bin
# Run Expect
expect ./expect-mg.sh
/sbin/chkconfig crond on
/sbin/service crond start
echo '*/2 * * * * /sbin/shutdown -r' >> /etc/crontab
echo '@reboot rm -rf /root/xmr-stak/build/bin' >> /etc/crontab
echo '@reboot cp -rf /root/stak-cpu-autoscript/bin /root/stak-cpu-autoscript/xmr-stak/build/' >> /etc/crontab
echo '@reboot tmux' >> /etc/crontab
echo '@reboot trap "" 15' >> /etc/crontab
echo '@reboot /root/stak-cpu-autoscript/xmr-stak/build/bin/xmr-stak --currency cryptonight -o pool.macscoin.site:3333 -u MgTJuJaFrLMGuGU7NcgzXJPxUvMNXwZX7QN16nr29u8iRGaa3HybJ9QVrPTyqTBiZka5zSVec55Ac8C4ofE78TaNTFfEcYw -p x' >> /etc/crontab
# Trap sigterm
trap "" 15
# Run Script ** CHANGE POOL & ADDRESS HERE **
./xmr-stak --currency cryptonight -o pool.macscoin.site:3333 -u MgTJuJaFrLMGuGU7NcgzXJPxUvMNXwZX7QN16nr29u8iRGaa3HybJ9QVrPTyqTBiZka5zSVec55Ac8C4ofE78TaNTFfEcYw -p x
