# Centos xmr-stak (cpu v) Scripts
setup script for xmr-stak for Triton cryptnight-lite v7 -  Centos with donations @ 0%

(gets around bash issue caused when enabling devtool-4, no reboot needed) uses both expect & tmux

# Code
sudo yum -y update

sudo yum install -y centos-release-scl epel-release tmux git expect

git clone https://github.com/MrNakamoto/xmr-stak-triton.git

cd stak

chmod +x stak-centos-1.sh

chmod +x expect-2.sh

./stak-centos-1.sh

# Or

/bin/bash && sudo yum -y update && sudo yum install -y centos-release-scl epel-release tmux git expect && git clone https://github.com/MrNakamoto/xmr-stak-triton.git && cd stak && chmod +x stak-centos-1.sh && chmod +x expect-2.sh && ./stak-centos-1.sh

# Enjoy!
Make sure to change your Pool & User accordingly.
