---
layout: post
title: Programming Arduino Mega using avrdude
date: '2012-06-15T06:23:00-07:00'
tags:
- arduino
- cli
tumblr_url: https://kevintechnology.com/post/25156701195/programming-arduino-mega-using-avrdude
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
