---
layout: post
title: Porting Game Boy Emulators to the Pebble Time
date: '2017-03-01T22:38:12-08:00'
tags:
- pebble
- gameboy
- emulator
- pokemon
- mario
- rom
- firmware
redirect_from:
- /post/157894360030/porting-game-boy-emulators-to-the-pebble-time
---

I worked on UI and graphics firmware at [Pebble](https://en.wikipedia.org/wiki/Pebble_%28watch%29) from April 2015 until the company was [acquired by Fitbit](https://investor.fitbit.com/press/press-releases/press-release-details/2016/Fitbit-Inc-Acquires-Assets-from-Pebble/default.aspx) in December 2016. One of my favorite internal hackathon projects I worked on with some Pebble coworkers involved porting [Game Boy](https://en.wikipedia.org/wiki/Game_Boy) [emulators](https://en.wikipedia.org/wiki/Emulator) to the [Pebble Time](https://en.wikipedia.org/wiki/Pebble_Time).

We worked on two versions of this project; one version ported a Game Boy emulator into a custom version of the Pebble Time firmware, and another version ported a different Game Boy emulator into a regular Pebble Time app built with the public Pebble SDK.

Both versions only ran original Game Boy ROMs (i.e. no Game Boy Color ROMs), although they both did support games with custom color palettes.

## Version One: Custom Firmware

Around May 2015 I worked with [Varun Reddy](https://www.linkedin.com/in/varunred/) to port a Game Boy emulator called [BitBoy](https://bitboxconsole.blogspot.fr/2014/01/bitboy-bitbox-emulator-for-bitbox.html) (which is itself an ARM port of the [gnuboy Game Boy emulator](https://sourceforge.net/projects/gnuboy/)) to the Pebble Time.

We picked BitBoy because it was written in C and had already been demonstrated to run on the ARM Cortex M4 STM32F405 CPU (168 MHz 192 KB RAM), which is in the same family of processors as the Pebble Time’s ARM Cortex M4 STM32F439ZG CPU (run at 100 MHz, 256 KB RAM).

We ported BitBoy into a modified version of the Pebble firmware instead of as a regular Pebble SDK app for a few important reasons:

* Game Boy emulation requires more RAM than is available to Pebble SDK apps (only 64 KB for RAM and code combined), so by building the emulator into the firmware we could resize the firmware’s RAM partitions to support the emulator’s memory requirements
* [Pebble SDK apps only get 256 KB of resource storage](https://developer.rebble.io/developer.pebble.com/guides/app-resources/index.html), so building the emulator into the firmware gave us unrestricted access to the watch’s flash storage for storing ROMs (necessary for large ROMs such as Pokemon Red which has a size of 1 MB)
* We wanted to connect an NES controller to the emulator via the Pebble Time’s smartstrap port, and, at the time, the [smartstrap APIs](https://developer.rebble.io/developer.pebble.com/guides/smartstraps/talking-to-smartstraps/index.html) had not yet been released in the public Pebble SDK

Before we added smartstrap support for the NES controller, we used the following button control scheme for testing the emulator:

![Diagram explaining how Pebble buttons map to Game Boy controls]({{ "/assets/pebble-gameboy-controls.png" | absolute_url }})

Note that we reserved the back button for easily exiting the emulator app.

By utilizing [frameskip](https://en.wiktionary.org/wiki/frameskip) we were able to achieve performance of about 24 FPS, making this version of the Pebble Game Boy emulator reasonably playable.

[Brian Gomberg](https://www.linkedin.com/in/brian-gomberg-0a666037/) worked on connecting an NES controller to the Game Boy emulator via the Pebble Time’s smartstrap port. He used an early version of the [Seeed Studio RePhone (Xadow) smart strap kit](https://www.seeedstudio.com/RePhone-Strap-Kit-for-Pebble-Time-p-2633.html) to interface the controller with the smartstrap port, and he modified our custom Pebble firmware to forward signals from the smartstrap port to the Game Boy emulator.

Here are some pictures of Pokemon Red running on the Pebble Time:

![Picture of Pokemon Red start screen running on the Pebble Time]({{ "/assets/pokemon-red1.jpg" | absolute_url }})

![Picture of Pokemon Red gameplay on the Pebble Time]({{ "/assets/pokemon-red2.jpg" | absolute_url }})

![Picture of NES controller connected to Pebble Time via smart strap to control the Game Boy emulator]({{ "/assets/nes-controller.jpg" | absolute_url }})

## Version Two: SDK App

In August 2015 I worked with [Heiko Behrens](https://heikobehrens.com/) on another version of the Pebble Game Boy emulator. We ported an emulator called [PlutoBoy](https://github.com/RossMeikleham/PlutoBoy) using the public Pebble SDK so it could be side-loaded as a regular Pebble app. This was a fun challenge because:

1. SDK apps have access to far less RAM than a built-in firmware app
2. SDK apps only receive 256 KB of resource storage for ROMs (so unfortunately Pokemon is not an option)
3. SDK resources are not stored contiguously in flash, which means trivial memory mapping of the ROM is not possible

We chose PlutoBoy as the emulator to port because it was written in C, ran on our Mac laptops using [SDL](https://www.libsdl.org/) (which made it fast and easy to test changes we made to the emulator to support the Pebble), and it was already structured in a way that abstracted hardware specifics to support multiple platforms (which made adding the Pebble Time as one more platform easy).

The Pebble SDK RAM constraints (only 64 KB for RAM and code combined) did not allow us to load any ROMs (the smallest being 32 KB) completely into memory, so instead we used a cache to load chunks of the ROM into memory on-demand. This method worked but was quite slow because the memory had to be copied from the kernel into userspace on each cache miss. At best it ran at only about 14 FPS and was not realistically playable.

Here is a video of Super Mario Land running on the Pebble Time in this version of the project, although note that the video is sped up 300% because of the slow performance:

{% youtube "https://www.youtube.com/watch?v=_mN2sLMxcsw" %}

As you can see in the video, we used the same button control scheme for this version as we did in the previous iteration of the project.

## Source Code

I realize that some people may be interested in the source code from these projects, but unfortunately I cannot release them because I neither have access to them anymore nor do I own the code. These projects were done for internal hackathons and thus Pebble (now Fitbit) owns them.

However, I would be delighted to see other developers use the ideas from this article to port game emulators to the Pebble watches in their own projects. :)

## Conclusion

I enjoyed working on these projects with my coworkers because I grew up playing games like Pokemon on the Game Boy, and so it was fun to learn more about how the Game Boy hardware works as well as gain some experience porting 3rd party code to new hardware platforms (which I’ve already found useful in several other projects).

## Additional Resources

* [The Ultimate Game Boy Talk](https://www.youtube.com/watch?v=HyzD8pNlpwI)
* [GbdevWiki](http://gbdev.gg8.se/wiki/articles/Main_Page)
* [RealBoy emulator blog posts](https://realboyemulator.wordpress.com/)
* [GameBoy Emulator in JavaScript article series](http://imrannazar.com/GameBoy-Emulation-in-JavaScript:-The-CPU)
* [List of Game Boy cartridges and what memory bank controller they use](http://www.devrs.com/gb/files/gbmbcsiz.txt)
* [Everything You Always Wanted To Know About GAMEBOY but were afraid to ask](https://web.archive.org/web/20210606105755/http://www.emulatronia.com/doctec/consolas/gameboy/Gmb-spec.txt)

* * *

_Many thanks to Heiko Behrens, Brian Gomberg, and Varun Reddy for reviewing drafts of this article and for their work on these projects._
