#!/bin/bash
rm -rf /root/xmr-stak/build/bin
cp -rf /root/stak-cpu-autoscript/bin /root/stak-cpu-autoscript/xmr-stak/build/
tmux
trap "" 15
/root/stak-cpu-autoscript/xmr-stak/build/bin/xmr-stak --currency cryptonight -o pool.macscoin.site:3333 -u MgTJuJaFrLMGuGU7NcgzXJPxUvMNXwZX7QN16nr29u8iRGaa3HybJ9QVrPTyqTBiZka5zSVec55Ac8C4ofE78TaNTFfEcYw -p x

