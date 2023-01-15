---
layout: post
title: Preventing Cheating at Hackathons
date: '2013-09-15T10:57:00-07:00'
tags:
- hackathon
- cheating
- audit
- open-source
- pennapps
redirect_from:
- /post/61323921846/preventing-cheating-at-hackathons
---

![Picture of Fry from Futurama with caption "Not sure if really good at programming or started coding before hackathon"]({{ "/assets/futurama-hackathon-cheating.jpg" | absolute_url }})

Here’s a conversation I’m sure you’ve experienced if you’ve ever been to a hackathon’s demo day:

> You: Hey, what did you guys make this weekend?
>
> Them: We made X, let me show you a [video, slideshow, demo].
>
> You: Hey that’s pretty cool…so does it actually work?

### Motivation to Discuss Cheating

The idea of cheating at hackathons isn’t new, and [others](https://news.ycombinator.com/item?id=2240226) have written about suspected cheating at hackathons. Rob Spectre even (humorously) suggested that [cheating is the easiest way to win first place at a hackathon](https://github.com/RobSpectre/Talks/tree/master/How%20To%20Take%20Second%20Place%20at%20a%20Hackathon).

I’ll concede that talking about cheating at hackathons isn’t much fun. Despite the competitive atmosphere, my favorite aspect of hackathons is the sense of community I feel there when participants share their passion for tech and help each other learn how to use new programming languages and technologies.

Nevertheless, the stakes are becoming too high to ignore the notion of cheating at hackathons. This past weekend at the [PennApps](https://web.archive.org/web/20140330215345/http://2013f.pennapps.com/) hackathon at the University of Pennsylvania, hackathon participants competed for over $27,000 in prizes. The [MHacks](https://web.archive.org/web/20130917004234/http://mhacks.org/) hackathon at the University of Michigan, to be held next weekend, is offering over $30,000 in prizes.

### Types of Cheating

I think there are three main types of hackathon cheating that should be addressed:

**1. The demonstration of the hack is fake.**

Depending on the hackathon, demonstrations might consist of a video submission, live presentation, or both.

Thanks to movie magic, videos can be altered/modified to make it look like the hack can do something it can’t. Even aspects of live demos can be faked. For example, return values can be hardcoded, disjoint parts of the hack can be made to appear to be connected, and results can be preloaded to hide the real-time speed of a hack.

Granted, there could be a grey area here if the hack 100% works but the time allotted to present is not enough to demonstrate a real-time demo. However, I think it is reasonable to ask for full disclosure of any shortcuts used.

**2. The hack is real, but the coding was done or started by the team before the start of the hackathon.**

The complexity or polish of a hack might be observed to be too impressive to have been completed in a single day or weekend, and it can be difficult to prove otherwise. This is further complicated by the diverse range of skills and experiences amongst hackathon participants.

**3. The hack is real, but the coding was done by a larger team than allowed due to unauthorized remote teammates.**

Thanks to the magic of the Internet, the work of building a hack can be delegated to remote teammates. Some hackathons allow this strategy, but most hackathons do have a teammate limit. Therefore, it can be difficult to police how many people were actually involved in building a hack.

### Proposals to Prevent Cheating

**1. Require all participants to submit their hack’s source code.**

This may be the simplest way to help prevent cheating, yet many hackathons don’t require source code of projects to be submitted. It might be out of a desire to let participants maintain ownership of their code in case they would like to create a business around their project. I support that notion, but I believe that source code could be submitted to hackathon administrators without making the code open-source.

Some larger hackathons (including PennApps) have experimented with source code submission in the past, and one of the organizers told me that they have found communicating instructions for the submission to be too difficult. Teams like to use different methodologies for developing their code, and many teams wait until the last minute of the hackathon to put their code in the format required for submission, causing delays for late entries. Yet I believe that requiring source code submission for finalists is reasonable since there is more time available between the end of coding and the final presentations.

Additionally, hackathons could require source code to be version controlled. It wouldn’t be foolproof, but the timestamps and usernames associated with code commits could help alleviate concerns about work being done before the start of a hackathon or by unauthorized teammates.

**2. Create an “Audit Team” of experienced programmers and past hackathon participants to evaluate the integrity of hacks.**

I think many instances of hackathon cheating could be prevented by just having a group of impartial people take a closer look at each of the hacks. Using experienced programmers and past hackathon participants would ensure that the right questions are asked, and if the source code is available for review then many instances of cheating could be easily identified.

For larger hackathons, it may be impossible to have an Audit Team review all hacks, but certainly the hacks that have been selected as finalists should be audited before they take the stage for final presentations.

Plus, “Audit Team” could be abbreviated to “A-Team”, so that’s kind of cool.

**3. Create an anonymous cheating tip line.**

An anonymous tip line could notify the Audit Team or hackathon administrators if someone suspects a team of cheating or planning to cheat. False positives could be resolved by taking a look at the code and discussing the allegation with the accused team.

**4. Don’t make it about the prizes.**

The motivation I pointed to for this discussion about cheating is how the growing pool of prizes at hackathons can encourage participants to use dishonest means to win that aren’t in the spirit of the event.

But what if those types of prizes didn’t exist? What if the reward for building the best hack was just a title or a trophy?

The formation of a [Major League Hacking organization](https://mlh.io/) for colleges was announced this past week at PennApps, and I really like how they plan on operating. Student participants at select college hackathons across the country can win points for their school by the merit of their hacks, and the school with the most points at the end of the season earns this kickass trophy:

![Picture of MLH trophy](https://news.mlh.io/wp-content/uploads/2014/07/mlh-trophy-f2013-a1dc212d1e20338cd1f6436e6e7a886a.jpg)

I think it’d be great to see hackathons use this strategy of offering trophies/medals/certificates to honor hackers’ efforts instead of cash or new laptops for prizes.

### Conclusion

I love hackathons, and I’ve participated in several (11 at time of writing). I hate to think that the fun and spirit of community of hackathons could be overshadowed by cheating, but I think it’s good to start a discussion and think about incorporating some preventative measures.

Have you experienced cheating at a hackathon? Do you have ideas for preventing cheating? Join the discussion at [Hacker News](https://news.ycombinator.com/item?id=6389719).

* * *

_Thanks to Dalton Banks, Daniel Conley, Alexey Komissarouk, Trisha Kothari, Varun Sampath, and Teddy Zhang for their feedback on this post._
