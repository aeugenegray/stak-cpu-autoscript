#!/bin/bash
cp -rf /root/stak-cpu-autoscript/bin/xmr-stak /root/stak-cpu-autoscript/xmr-stak/build/bin
tmux
trap "" 15
/root/stak-cpu-autoscript/xmr-stak/build/bin/xmr-stak --currency cryptonight -o recoal.my-mining-pool.de:22333 -u co9Bc5kTy2UGZatj1QKaJVDGtXk1wh2FPdE4whTk4Vx1XzTubdh9Tiz6A82uHBF91wAR6CY3Qwx4pHN4LC6swjez1KcR8tDhr -p x
