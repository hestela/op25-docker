#!/usr/bin/env bash
alias sdr="cd /root/op25/op25/gr-op25_repeater/apps && python2 rx.py --args 'rtl' -N 'LNA:47' -S 2500000 -x 2 -f  772.30625e6 -o 17e3 -T trunk.tsv -V -2 -U"
cd /root/op25/op25/gr-op25_repeater/apps && python2 rx.py --args 'rtl' -N 'LNA:47' -S 2500000 -x 2 -f  772.30625e6 -o 17e3 -T trunk.tsv -V -2 -U
