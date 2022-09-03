# SCTD

a simple daemon for sct


taken from [lobste.rs](https://lobste.rs/s/stlowv/sctd_minimal_daemon_for_sct) 
 and the [dotfiles](https://github.com/qbit/dotfiles/blob/master/bin/sctd) of
 the author, some small modifications for more flexibility.



configuration is simple as we only really care about 3 variables, INTERVAL which
 determines how often the screen temperature is adjusted default is one minute,
a suffix can be given for seconds (s), minutes (m) or hours (h), otherwise the
time is assumed to be in seconds, the color temperature through the day is
determined by two variables, TEMP_MIN and TEMP_MAX, the former will be the
temperature at midnight, and the later will be the temperature at noon.

arguments can be passed to produce debug output or run as a one shot.


sct or xsct should be in the repos of most distros, in the case of linux xsct
 is reccomended as it is the actively maintained port.



a config that mimics the defaults would look like this
sctdrc
```
TEMP_MIN=4500
TEMP_MAX=6500
INTERVAL=60
```