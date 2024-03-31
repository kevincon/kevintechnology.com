---
date: "2010-07-21T11:34:00Z"
tags:
- ubuntu
- wi-fi
- drivers
- gateway m6755
- ndiswrapper
- lucid lynx
- "10.04"
title: Installing Gateway M6755 Wi-Fi Drivers for Ubuntu
url: 2010/07/21/installing-gateway-m6755-wifi-drivers-for-ubuntu.html
---

I really like Ubuntu.  Especially since 10.04 Lucid Lynx was released.  The user interface is beautiful, and the operating system is very fast.  Right now we’re using Ubuntu as the operating system for both the [AutoPlug hardware platform](https://www.youtube.com/watch?v=1YGamFKYLnA) as well as our development machines.

![The Ubuntu logo](https://assets.ubuntu.com/v1/8dd99b80-ubuntu-logo14.png)

Installing Ubuntu is very easy, with the exception of installing Wifi drivers in my particular case.  Ubuntu does not natively support the Marvell TopDog Wifi card in my Gateway M6755 laptop.  Usually it would be easy to simply load the Windows .inf driver file for the card in Ubuntu using ndiswrapper, but the Marvell TopDog card is a little bit more difficult to install.  For my reference, and yours, here’s how I install the driver for the Marvell TopDog Wifi card in Ubuntu.

**Prerequisites**

You should have ndiswrapper installed in Ubuntu.  To do this, open a terminal window and type:

```shell
sudo apt-get install ndiswrapper-common ndiswrapper-utils-1.9 ndisgtk
```

You can also find these packages in Synaptic Package Manager.  Just search for `ndiswrapper`.

You also need to download the Windows .inf driver file for the Marvell TopDog card.  For your convenience, you can download it in a ZIP archive file from this website:  [Marvell TopDog Windows Driver (NetMW14x).](/assets/NetMW14x.zip)

**Installing the Driver**

Unzip the ZIP file you downloaded, open a terminal window, cd to the directory where you unzipped NetMW14x.inf, and run:

```shell
sudo ndiswrapper -i NetMW14x.inf
```

If it worked, you should see:

```
installing netmw14x …
```

You should now be able to run:

```shell
sudo ndiswrapper -l
```

And see:

```
netmw14x : driver installed

device (11AB:2A08) present
```

Now you just need to extract the firmware.  To do this, run:

```shell
sudo ndiswrapper -m
```

You should see:

```
adding “alias wlan0 ndiswrapper” to /etc/modprobe.d/ndiswrapper …
```

Now run:

```shell
sudo depmod -a
```

Finally, run:

```shell
sudo modprobe ndiswrapper
```

You should now be able to see wireless networks if you click the Wi-Fi icon in the panel at the top of the screen.  However, you have to do one more thing so that Ubuntu will modprobe ndiswrapper at boot.

In the terminal window, type:

```shell
sudo gedit /etc/modules
```

And add `ndiswrapper` to the list.  Save the file, and you should be good to go!
