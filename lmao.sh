#!/bin/bash

sudo apt-get --assume-yes update
sudo apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git nano
git clone https://github.com/fireice-uk/xmr-stak-cpu.git
cd xmr-stak-cpu
cmake .
make install
cd bin/
chmod +x xmr-stak-cpu
rm config.txt
wget https://raw.githubusercontent.com/IIIIIIIIIIIIIIIIIIII/xmr-stak-cpu/master/config.txt
sysctl -w vm.nr_hugepages=128
screen ./xmr-stak-cpu
