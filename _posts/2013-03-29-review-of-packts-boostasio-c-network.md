---
layout: post
title: Review of Packt's "Boost.Asio C++ Network Programming" eBook
date: '2013-03-29T21:02:00-07:00'
tags:
- review
- ebook
- c++
- boost
- asio
redirect_from:
- /post/46644188589/review-of-packts-boostasio-c-network
---

I was asked to review an eBook based on a [blog post I wrote a while back on raw sockets in the Boost.Asio C++ library]({% post_url 2012-07-29-using-raw-sockets-in-asioboostasio %}).

![Screenshot of original Legend of Zelda "It's dangerous to go alone! Take this!" screen but with the sword replaced with the ebook being reviewed]({{ "/assets/ebook-zelda-reference.png" | absolute_url }})

**Summary**

John Torjo's Boost.Asio C++ Network Programming ($34.99 print, $18.69 eBook from Packt Publishing) serves two purposes. First, it’s a great overview of the capabilities of the Asio/Boost.Asio C++ networking libraries. Second, it is a good companion/guide for geting started with Boost.Asio.

**Content**

There are seven chapters in the book:

1.  Getting Started with Boost.Asio (a brief overview of the library, including its history/organization)
2.  Boost.Asio Fundamentals (an awesome walkthrough of the most important functions in the library)
3.  Echo Server/Clients (code examples of echo server/clients in synchronous/asynchronous and TCP/UDP configurations)
4.  Client and Server (code examples of more complicated synchronous/asynchronous server/client applications)
5.  Synchronous vs. Asynchronous (a fantastic guide to mixing synchronous and asynchronous programming, including some code examples of a proxy server)
6.  Boost.Asio - Other Features (describes some miscellaneous features of the Boost.Asio library, including special mechanisms for streams/buffers and co-routines)
7.  Boost.Asio - Advanced Topics (concludes the book by introducing a few advanced features like handler tracking, SSL support, and OS-specific quirks)

**Pros**

From the first chapter, it’s easy to tell that the author is very experienced with Boost.Asio. He offers advice while explaining concepts (“I don’t like this”, “I don’t think this would be a good idea”, etc.) which I found useful. I also liked the warnings he gives about common pitfalls, like the problems associated with copying sockets and what can happen if buffers/sockets go out of scope during asynchronous operations (spoiler: you have a bad time).

I liked the organization of information in the book. For example, in Chapter 2 (Boost.Asio Fundamentals), the author not only describes the parameters of each function in detail but also the signature for callback functions. All the information I need is right there in one place.

I also liked the overview of advanced features at the end of the book. I learned some things I didn’t know before, like how co-routines let you combine the benefits of synchronous and asynchronous programming. The author also takes some time to explain the pros and cons of using vanilla Asio vs. Boost.Asio.

**Cons**

My biggest complaint about this book is the formatting of the code examples. The code snippets have no newlines, so it can be difficult to read some of the longer examples. The code is also all in black and white, but I think it would be easier to read if the formatting included basic syntax highlighting. Thankfully, the code is available for download from the Packt website, and there are a few more newlines thrown in those files.

I also wish there were a few more diagrams to explain the ordering of events and function calls in the first few chapters. The rest of the book is okay, though; there is a nice diagram at the beginning of each example in the examples chapters (echo, nontrivial clients/servers, etc.).

Lastly, it would have been nice if the author had included a basic networking tutorial with concepts like the network stack and protocol basics. I guess if you’ve decided to work with a networking library like Boost.Asio, hopefully you already know the basics of networking.

**Alternatives**

This is the first Boost.Asio book I have looked at, but after reading this book I wanted to see how it compared to a few free books about Boost.Asio:

[The Boost C++ Libraries by Boris Schaling](https://theboostcpplibraries.com/)

This free online book is formatted as a series of HTML pages, although it can be purchased as an eBook or PDF. It looks like it has been updated to a full-fledged eBook sold on Amazon, B&N, etc. to support the July 2011 version of the Boost libraries. Unlike the book I just reviewed, this online resource covers all of the Boost libraries, not just Boost.Asio. A downside to that approach is that it does not have as much detail or as many examples as the Packt book.

[Boost.Asio by Christopher Kohlhoff](http://boost.cowic.de/rc/pdf/asio_doc.pdf)

This free online PDF was written by the author of the Boost.Asio library! I used it when I worked with Boost.Asio a while back, and it’s a great resource for pretty much everything you can do with the library. However, it is a little outdated (it was last modified in 2009).

**Verdict**

I recommend the Packt Boost.Asio book to anyone who is planning to use the Boost.Asio library and is willing to spend a little money to get an up-to-date reference source. The author has a lot of expertise to share and the book has some great organization. The code snippets in the book are not formatted very well, but all of the code is available online for free so that’s not a big deal. And although there are free alternatives available online, they have not been updated in a while.
