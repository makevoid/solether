# Solether

Check the website: 

#### <http://solether.mkvd.net>

check the node Edison code at the bottom of the website!

Check the schematics (the missing part on the top should ve a voltage controller)


Also here's a message I sent to somebody asking via email how I forsee the automated project

----

### Making Solether autonomous:

From a message I sent via email:

---


The autonomous part as I thought about it a bit, can work like this:

- Solether earns money by giving electricity for people to charge phone / stuff
- you, new user (NEW_USER), add more additional solar panels to Solether, you get paid
- if you connect a new solar panel/power source that gives Solether enough power for a week, you get paid 


#### on the hardware side:

- you have an additional usb port that goes directly to the battery with a wire
- you have a current sensor (detects current) on the wire that detects if and how much current passes from the wire 


#### arduino/r-pi code:

```
- in the loop:
  - if sensor receives current for a week (during day hours)
    - web3.sendTransaction NEW_USER_ADDRESS (send the funds)
```


#### webapp:

(or other app, this is not present, is how I imagine it atm)

- you build a webapp, one screen, that accepts an address as input
- lets you input an ethereum address (NEW_USER_ADDRESS) as payout address 
- you have to connect a power source while you register, otherwise the registration will get canceled
- you write a file in the local Arduino/R-PI filesystem, the arduino/r-pi code in the loop reads it and gets the NEW_USER_ADDRESS variable


thanks
[@makevoid](https://twitter.com/makevoid)
