---
layout: post
title: The Repair of My Compaq Armada M300 Laptop
date: '2008-07-09T21:00:00-07:00'
tags:
- compaq armada m300
- repair
redirect_from:
- /post/824699336/the-repair-of-my-compaq-armada-m300-laptop
---

Here is my detailed account of how I brought my four-year-old Compaq Armada M300 laptop back to life from its supposed death.

![Picture of a laptop showing its model of "COMPAQ ARMADA M300"]({{ "/assets/armada-laptop-picture.jpg" | absolute_url }})

**System Specifications:**

*   Intel Pentium III 500Mz Processor
*   11.3" CTFT XGA display (1024x768 LCD panel)
*   320 MB RAM
*   12 GB Hard Drive
*   ATI Rage LT Pro Video Card (4 MB video SGRAM)
*   ESS Maestro 2E Sound Card
*   Lucent Mini-PCI 56K Modem
*   Intel Pro/100+ Mini PCI Ethernet Card

**Background Story:**

My brother and I used this Compaq laptop from about 2001 to 2004. We ran Windows 98 on it and mainly used it as a travel companion when we were away from our desktops. While visiting our Aunt’s house in Texas in 2004, we left it on overnight. When we returned the next morning, the laptop was mysteriously off. When we tried to boot it, it showed the Compaq BIOS splash screen, a blinking white cursor appeared in the upper-right-hand corner of the screen, the message “F12 = Network Service Boot” appeared in the lower-right-hand corner of the screen, and…it froze there. The laptop would do this every time we tried to boot it up. After returning home, even our father could not figure out what was wrong. So we stored the laptop in its Targus carrying case and put it on a shelf in our closet. It remained on that shelf for four years.

**The Repair:**

After completing the Intro to PC Architecture class at Intel last week, I was inspired to try my hand again at fixing my Compaq laptop.

I dusted off the Targus carrying case and setup the laptop. Surprisingly, the thing still turned on…and exhibited the same problem as it did four years ago. I turned it off and thought for a bit. I thought, “Well, if it’s freezing on the BIOS screen, maybe it’s a problem with the CMOS battery.”

Now this was the first time I had ever tried to repair a laptop, at least hardware-wise. I had no idea where an hardware components were located on the thing. I know desktop hardware…not laptop hardware. However, I read somewhere about a website called [www.eserviceinfo.com](http://www.eserviceinfo.com). I cannot tell you how much I love [www.eserviceinfo.com](http://www.eserviceinfo.com). It’s a website where you can search for just about any electronic device and find its manufacturer’s service manual. Fortunately it had the Compaq Armada M300 service manual available for download.

So now I hd this fairly large PDF file detailing how to take apart, repair, and put back together the Compaq Armada M300. The CMOS battery is actually very easy to access on this laptop. It is located on the bottom of the laptop near the back under a popup tab (it’s the the module shaped like a teardrop in the picture below):

![Picture of CMOS battery compartment on bottom of laptop]({{ "/assets/armada-battery-compartment-picture.gif" | absolute_url }})

So I removed the tab and found the CMOS battery. I cut the red and black wires connected to it with fingernail clippers (poor man’s wire cutters) and measured the voltage coming out of it with a multimeter. The battery is supposed to output 3 volts. It was actually outputting 0.25 volts. So even if the CMOS battery wasn’t the problem with the laptop, it sure wasn’t helping.

I located a new CMOS battery on eBay for $3 (including shipping). I patiently waited for it to arrive in my mailbox.

I got the CMOS battery about four days later. I felt silly for cutting the wires of the old one. Apparently the wires go into a connector plug that was hidden just under the bottom of the laptop. So I unplugged what was left of the old battery and plugged the new one in. I plugged in the AC adapter, pressed the power button, and…experienced the same problem. “Well, dang it,” I said. I was really hoping it would be a simple fix to replace the CMOS battery.

In the Intro to PC Architecture class, our instructor told us that the number one method that fixes about 90% of the “dead” motherboards he receives is reseating the hardware. By “reseating,” he means unplugging all components from the motherboard, waiting 10 minutes or so, and plugging everything back in. In his experience, reseating the hardware components has fixed way more computers than replacing parts.

So I thought I’d give reseating the hardware a try.

I started with the hard drive. I had to unscrew a screw on the bottom of the laptop, pull up on this bevel thing, and pull out the hard drive. I took it out, waited a minute, and plugged it back in. Upon trying to boot, I still got the Compaq splash screen freeze. Bummer.

Next, I tried the modem card on the bottom of the laptop:

![Picture of modem card compartment on bottom of laptop]({{ "/assets/armada-modem-picture.gif" | absolute_url }})

I unscrewed those two screws in the picture and unplugged a ribbon cable connected to the modem card. I waited a few minutes and plugged it back in. This time when I booted the laptop _it got past the splash screen_. “Hooray,” I exclaimed! “I’ve done it!”

Except I hadn’t really done it. It turns out there was more than one thing wrong with this laptop. The modem card was definitely a problem. Apparently the laptop was trying to boot to the modem.

Anyway, back to the story, and the reason why the modem card wasn’t the only problem.

First of all, my goal in fixing this laptop was to install a distribution of Linux on it and use it for basic word processing and internet usage at Penn, so I could keep my brand new Gatway laptop in my dorm room and take this Compaq laptop to class to take notes.

Now I’m a total Linux n00b. I used it a little when I was working at Intel last summer, but I didn’t do very much with it. Keep that in mind.

So since I could get past the BIOS splash screen, I entered the BIOS setup. The BIOS settings looked all right. I reset them to the default settings just to be safe. I saved changes and exited the setup to try to boot into Windows 98. It showed that beautiful blue “Loading Windows 98” screen for about five seconds before automatically restarting. It continued to automatically restart when I tried again. The laptop just didn’t want to boot into Windows 98, I guess. Oh well, I didn’t want Windows 98 anyway.

So I used the docking station that goes with this laptop (which also magically still worked) to boot to a Windows 98 floppy disk. I love Windows 98 floppy disks. They allow you to format a hard drive very quickly. It’s really too bad floppy disk drives are disappearing from our computers. They’re really useful devices.

Anyway, I formatted the hard drive and downloaded and burnt CDs of both Ubuntu and Xubuntu. I ended up going with Xubuntu as my Linux distribution because it supposedly runs better on older machines. I popped the Xubuntu CD into the CD drive and booted the computer. It booted from the CD and showed the Xubuntu install menu with an option to install Xubuntu.

But another option, Test RAM, caught my eye. I decided to try it just for fun.

I’m really glad I did.

When the CD ran MemTest to test my RAM, it showed nothing but errors in red. Memory sectors that had passed remained 0% while more and more red filled my screen. “Well, that explains why Windows 98 wasn’t working,” I thought.

So I was thinking my RAM was probably bad. A search on [www.pricegrabber.com](http://www.pricegrabber.com) indicated that a replacement stick of RAM would cost $48. Bummer. Anyway, I thought I would at least take the RAM out while I was debating on whether or not to buy a new stick.

To remove the RAM I had to push down on three tabs located at the top of the keyboard. While pressing those three tabs in, I had to pry up and pull back the whole keyboard:

![Picture of keyboard on laptop]({{ "/assets/armada-keyboard-picture.gif" | absolute_url }})

Underneath was the motherboard of the laptop. I could clearly see certain parts, but most of the board was covered with a silver sheet of metal, probably some sort of heat dissipator.

One of the accessible parts was the RAM. I pulled on two side tabs and pulled the RAM out at a 45 degree angle just like the service manual said to.

Just for fun, I thought I would reseat the stick and try MemTest again. So I reseated the DIMM, replaced the keyboard, and turned on the power button once more. The laptop booted to the same Install Xubuntu menu and I selected Test RAM again.

This time, MemTest was passing. Everything was passing. “Well that’s interesting,” I thought.

I exited MemTest and tried installing Xubuntu. The installation setup popped up and I continued on to install Xubuntu on my newly rejuvenated laptop.

![Picture of laptop powered on showing xubuntu boot screen]({{ "/assets/armada-xubuntu-picture.gif" | absolute_url }})

**Conclusion:**

And that’s the story of how I fixed my first laptop.

In summary, the CMOS battery was almost dead so I replaced it. That didn’t fix it, but reseating the modem card got it booting past the Compaq BIOS splash screen. Finally, MemTest showed that my RAM was bad. After reseating the RAM, MemTest started passing and I was able to install Xubuntu.

The whole repair process cost $3 (for a new CMOS battery) and took about five hours.

![Picture of laptop powered on showing xubuntu desktop]({{ "/assets/armada-desktop-picture.gif" | absolute_url }})
