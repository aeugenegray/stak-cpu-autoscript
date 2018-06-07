# XMR-Stak - No Donate - Cryptonight-Lite-V7 - triton Coin - Cryptonote
setup script for xmr-stak for triton cryptnight-lite v7 -  Centos with donations @ 0%

(gets around bash issue caused when enabling devtool-4, no reboot needed) uses both expect & tmux

# Code
sudo yum -y update

sudo yum install -y centos-release-scl epel-release tmux git expect

git clone https://github.com/aeugenegray/xmr-stak-triton.git

cd xmr-stak-triton

chmod +x stak-centos-1.sh

chmod +x expect-2.sh

./stak-centos-1.sh

# Or

/bin/bash && sudo yum -y update && sudo yum install -y centos-release-scl epel-release tmux git expect && git clone https://github.com/aeugenegray/xmr-stak-triton.git && cd xmr-stak-triton && chmod +x stak-centos-1.sh && chmod +x expect-2.sh && ./stak-centos-1.sh

# Live Long and Prosper!
Make sure to change your Algo, Pool & User accordingly.


# Pitch in on a sack
BTC:

LTC:

ETH:

XMR:

BCH:
