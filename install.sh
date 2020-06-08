#!/bin/sh
apt-get update
apt-get build-dep gnuradio
apt-get install gnuradio gnuradio-dev gr-osmosdr librtlsdr-dev libuhd-dev  libhackrf-dev libitpp-dev libpcap-dev cmake git swig build-essential pkg-config doxygen python-numpy python-waitress python-requests

mkdir build
cd build
cmake ../
make -j2
make install
ldconfig
