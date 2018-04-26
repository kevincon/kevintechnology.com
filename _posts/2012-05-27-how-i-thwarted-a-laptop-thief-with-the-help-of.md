---
layout: post
title: How I Thwarted a Laptop Thief with the Help of McAfee and the Royal Canadian Mounted Police
date: '2012-05-27T03:05:00-07:00'
tags:
- theft
- laptop
- rcmp
- montreal
- mcafee
- windows
redirect_from:
- /post/23854403086/how-i-thwarted-a-laptop-thief-with-the-help-of
---

My brother’s laptop was stolen out of a car during Spring Break 2012 while he was visiting Montreal, Quebec.

He filed a police report, but it seemed unlikely that we would ever see the HP 2000-299WM laptop again. No, it’s not the greatest laptop in the world with its dual-core Intel Celeron 2.10 GHz processor, integrated graphics, and 3 GB of RAM. However, it was brand new as of January 2012. Along with the laptop, my brother’s camera and rented college textbooks were also stolen.

About a month later, I received a notification on my desktop computer from my McAfee Antivirus program that it was time to renew my family’s account subscription. I was redirected to McAfee’s site to purchase the renewal, and on the same page I was presented with a nice high-level view of all of the computers attached to my family’s account.

You can imagine my surprise when I looked at the list and saw that not only was my brother’s stolen HP laptop still listed on the account but the computer was marked as active and reported a current IP address!

![Screenshot of McAfee security center listing stolen laptop as active with a current IP address]({{ "/assets/mcafee-summary.png" | absolute_url }})

I ran a WHOIS lookup on the IP address to see if I could learn more about who was behind it. The IP address turned out to be located in Montreal and belonged to an ISP called Vidéotron.

My brother never got a chance to turn on his laptop before it was stolen in Montreal, so someone in Montreal had our laptop and was still using our McAfee Antivirus subscription! The thief might have been able to wipe my brother’s logon password (it’s possible to do this with an [Ultimate Boot CD](http://www.ultimatebootcd.com)) to use his software and access his data.

I went to Vidéotron’s website and found a form to submit an incident of Internet abuse (seemed somewhat related). I submitted a description of the laptop and the IP address and asked them what I should do. They responded:

> Due to our country regulation, we are not authorized to give out information about our customers. You will have to contact the RCMP (canadian police) or the international police of your country so they contact the RCMP ([http://www.rcmp.gc.ca/](http://www.rcmp.gc.ca/)). Upon receipt of a proper warrant, we will give these information to the police.

So next my father (the official owner of the laptop) and I emailed the Royal Canadian Mounted Police (RCMP) and explained the situation. We provided the model and serial numbers of the laptop and a screenshot from the McAfee info page where I first found the IP address.

An officer from the RCMP responded to our email and said that one of his detectives would take the case. We corresponded with the detective a few times about the laptop. He was able to get a warrant issued for Vidéotron to identify the person behind the IP address, and then one day we received an email from the detective which read:

> I have your laptop.

![Picture of returned laptop]({{ "/assets/returned-laptop.jpg" | absolute_url }})

The RCMP detective mailed us the laptop and AC adapter, and I’m happy to say that the laptop is in great condition. The detective didn’t let us know about any of the other stolen items or the details of how he retrieved the laptop, but we also didn’t ask. We were just happy to see the laptop again.

The RCMP was amazing in helping us recover the laptop and I commend them for their efforts.

When we got the laptop back I booted into Windows 7 safe mode and immediately disabled the network adapters. Wouldn’t it be crazy if the thief had installed some malware to steal our data on our home network? Talk about a trojan horse. Luckily this didn’t seem to be the case.

The laptop seemed to have been restored from the recovery partition and only had a few programs (Skype, Microsoft Office, and PokerStars) installed. McAfee Antivirus was installed but I was surprised to discover that the laptop’s captor was using his own license for McAfee, not my family’s license.

So my hypothesis is that McAfee uses some identifier unique to an individual computer to keep track of which account it’s registered to, perhaps the network card’s MAC address. But how was I able to see the laptop’s IP address through my family’s McAfee account page if the laptop’s captor was using a different account?

If McAfee does not prevent an individual computer from being linked to multiple accounts, this could be a significant security issue for people who buy used computers. If anyone from McAfee reads this or if anyone else might know more details, please let me know. In the meantime, I’ve reformatted the laptop and installed a different antivirus program.

By the way, this was the only laptop in my family that did not have the awesome and free [Prey anti-theft software](https://preyproject.com/) installed. But, of course, it does now.
