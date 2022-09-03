# SCTD

a simple daemon for sct


taken from [lobste.rs](https://lobste.rs/s/stlowv/sctd_minimal_daemon_for_sct) 
 and modified a little to be more flexible.



configuration is simple as we only really care about 3 variables, UPDATE which 
determines how often the screen temperature is adjusted in seconds, default is 
one minute (60 seconds), the color temperature through the day is determined by
 two variables, SUMAND and INCREMENT that are used in a rather simple equation

 ```
sum = SUMAND + INCREMENT * TIME
 ```

 where time is given in minutes.

 the way you can think about it is that `SUMAND` represents the minimum 
 temperature while `INCREMENT` is the delta, with the default values of
 SUMAND=5060 and INCREMENT=2 the lowest screen temperature at midnight 
 will be 5060K, while the highest temperature at noon will be 6500K the 
 default of x11.


sct or xsct should be in most repos, xsct is reccomended on linux as is the 
actively maintained one.



a config that mimics the defaults would look like this
sctdrc
```
SUMAND=5060
INCREMENT=2
UPDATE=60
```
