---
date: "2012-06-15T06:23:00Z"
tags:
- arduino
- cli
title: Programming Arduino Mega using avrdude
url: 2012/06/15/programming-arduino-mega-using-avrdude.html
---

In case anyone ever needs to program an Arduino Mega using `avrdude` but doesn’t want to run around the Internet looking for the command line settings, here you go:

Arduino Mega (ATmega 1280)

```
avrdude -p m1280 -c arduino -P /path/to/serial -b 57600 -F -U flash:w:/path/to/image.hex
```

Arduino Mega (ATmega 2560)

```
avrdude -p m2560 -c stk500v2 -P /path/to/serial -b 115200 -F -U flash:w:/path/to/image.hex
```
