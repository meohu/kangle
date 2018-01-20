#!/bin/bash
KANGLE_VERSION=3.5.8
killall -9 kangle
rm -rf kangle-*
rm -rf kangle-*
wget https://raw.githubusercontent.com/moehu/kangle-zdy/master/kangle-$KANGLE_VERSION.tar.gz
tar xzf kangle-$KANGLE_VERSION.tar.gz
cd kangle-$KANGLE_VERSION
./configure --prefix=/vhs/kangle --enable-vh-limit --enable-disk-cache --enable-ipv6 --enable-ssl --enable-http2 --enable-vh-limit 
make
make install
service kangle start
