---
date: "2012-07-29T15:55:29Z"
tags:
- boost
- asio
- sockets
title: Using Raw Sockets in Asio/Boost.Asio
url: 2012/07/29/using-raw-sockets-in-asioboostasio.html
---

This past week I got to play with the cross-platform Asio and Boost.Asio C++ libraries for socket programming.

![boost.asio y u no inject packets?](boost-y-u-no.jpg)

Unfortunately it turns out what I was trying to do (inject network packets) is not possible with these libraries, but in the process of trying to get that to work I was able to use the `basic_raw_socket` template class successfully, which it looks like [several](https://stackoverflow.com/questions/8022452/boost-asio-raw-sockets) [other people](https://d.hatena.ne.jp/devm33/20120208/1328718970) on the Internet are having trouble with. So I’ve written up a GitHub repository with the code and a pretty detailed README. I hope it will help others understand how to use raw sockets in Asio better.

{{< github repo="kevincon/asio-rawsockets-example" >}}
