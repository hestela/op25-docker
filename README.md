# Run OP25 in a docker container
![op25-docker](https://github.com/hestela/op25-docker/blob/master/screenshot.png?raw=true)
I made this because I found it basically impossible to get op25 to run in Ubuntu 20.04.
This was due to op25 mainly running on python2 but the main dependency for op25,
gnuradio has moved on to python3 in version 3.8.
op25 mentions being based on gnuradio 3.7, which is difficult to install
or even build on Ubuntu versions starting at 20.04
(first instance of gnuradio 3.8 being used).
I was able to get op25 to work just fine on my raspberry pi4,
but that is because it uses python2 and the gnuradio 3.7 (at least on my version).

### How to use
You will need to edit the tsv files in config to your liking.
Something I have noticed is that op25 doesn't like it when the tsv files are
outside of the app folder (op25/op25/gr-op25_repeater/apps) and gives errors
or just doesn't work as expected. So use my config as an example.
Using tabs instead of spaces is also important in all the tsv files.

I am using a bashrc to run rx.py. You will also need to edit the arguments to rx.py in bashrc.
I did this instead of entrypoint because it caused the output screen to clip the bottom off.
I haven't been able to get the plot window to work so far but that wasn't as important
as getting op25 to work in general. The output was a little messed up for me but
it is good enough.

You will probably have to install rtl-sdr on the host machine to get the udev rules.
I recommend testing your sdr with rtl_test or gqrx.
You will also want to test audio in the container after you build it.
Try this command in the container:
`play -n -c1 synth sin %-12 sin %-9 sin %-5 sin %-2 fade q 0.1 1 0.1`
If that doesn't work create this file /etc/modprobe.d/docker-sound.conf with contents:
`options snd_hda_intel index=1`
 and reboot.

When you are satisfied with your edits you can build the container with `docker build . -t op25`.
You can build the boatbod fork with `docker build . -t op25-boatbod`.
Then run op25 with run.sh (or run-boatbod.sh) or copy the docker run command from that file.
