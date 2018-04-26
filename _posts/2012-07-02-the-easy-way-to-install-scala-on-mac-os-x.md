---
layout: post
title: The Easy Way to install Scala on Mac OS X
date: '2012-07-02T15:34:00-07:00'
tags:
- scala
- homebrew
- mac
redirect_from:
- /post/26375906420/the-easy-way-to-install-scala-on-mac-os-x
---

If you download Scala from the [official site](https://www.scala-lang.org/downloads), it comes as a tgz archive of folders containing binaries. In other words, it’s a stand-alone install that you can put wherever you want. If you’re like me and would prefer Scala tucked away in the operating system, you’ll want to start by installing the awesome Mac package manager, [Homebrew](https://brew.sh/).

First, make sure you have Xcode installed (it’s free in the Mac App Store) with its optional command line tools installed (in Xcode go to Preferences, Downloads, and click “Install” next to Command Line Tools).

Next, install Homebrew by running the following in a terminal: 

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

_Note: The above command is changed by the Homebrew guys from time to time. If the above command doesn’t seem to be working, check the Homebrew website for the latest incantation: [https://brew.sh/](https://brew.sh/)_

Follow the instructions and enter your system password when prompted. Once Homebrew is installed, it’s super easy to install Scala by typing the following in a terminal:

```
brew install scala
```

Homebrew will install Scala in `/usr/local`, which is important for a [number of reasons](http://hivelogic.com/articles/using_usr_local/), and it also puts the man pages for the Scala tools in the appropriate place.

If your next step is to learn Scala, I’m finding “Programming in Scala” to be very helpful. It was written by the creator of Scala, Martin Odersky, and the first edition is free online at [https://www.artima.com/pins1ed/](https://www.artima.com/pins1ed/).
