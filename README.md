## XMR-Stak - Auto Install Script Centos - Cryptonote
(gets around bash issue caused when enabling devtool-4, no reboot needed) uses both expect & tmux

### Code
sudo yum -y update

sudo yum install -y centos-release-scl epel-release tmux git expect

git clone https://github.com/aeugenegray/stak-cpu-autoscript.git

cd stak-cpu-autoscript

chmod +x stak-centos-1.sh

chmod +x expect-2.sh

./stak-centos-1.sh

### Inline

/bin/bash && sudo yum -y update && sudo yum install -y centos-release-scl epel-release tmux git expect && git clone https://github.com/aeugenegray/stak-cpu-autoscript.git && cd stak-cpu-autoscript && chmod +x stak-centos-1.sh && chmod +x expect-2.sh && ./stak-centos-1.sh


### Stay Thirsy My Friends
BTC: 38NQuDc5NLWLo7oTygn1y1ipWhLYNWHhai

LTC: MAjxfmJ1zUZd6mCxJ4YpuD6UDCV9TRExbZ

ETH: 0x17654BB8c979D88cD783C212Ec8AE19cF2565641

XMR: 42si9ingS34BnhGVBamjZUSDZr8XmEENeEypeRjnZVGgXCtr5rano1UjXqrT3anyZ22j7DEE74GkbVcQFyH2nNiC3dJ1V5J

BCH: qpf93ymdf267ujyuu7rqtm2t6lxewl7jns8yv8pjtm

BCN: 27td1udbLduGqbDVf636m7EzVYowDszhAKnQ6KyJsLZMdjv654dcc2Jdi7ok6B5SQT6UXUtQgusruCoXbqUZm8VJAgc5VWL
