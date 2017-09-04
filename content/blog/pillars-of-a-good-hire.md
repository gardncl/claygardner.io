---
title: "Pillars Of A Good Hire"
description: "How to break into your first serious software engineering job"
date: 2017-08-27T16:00:00-04:00
tags: ["job interviews"]
---

Are you looking to break into the tech industry? Get out of that mindless software contracting job? This guide is for you!

Recently I was stuck in a dead end government contracting job--my first out of college. I decided that it wasn't for me and made a plan of attack to break into a far more challenging and rewarding position. These are the three pillars I based my preparation on that lead to multiple offers--including one that doubled my previous base salary. I believe that working through these three pillars will make you a strong enough candidate to 'upgrade' your career one level--at least while you are in the beginning of your career. For example, being outside of the industry (in college still or making a lateral move from another career) to getting your first development job. In my case I moved from a Jr. Engineer at a government contractor with a little over a year's experience to a Mid level engineer at a fast-paced, engineering-centered, small business having only done about four months of preparation outside of work.

# Pillar One: Business Logic

You must be able to crank out business logic in your language of choice. This requires brushing up on data structures and algorithms and really understanding how to utilize them. Of the six companies that I had technical interviews with none of the programming questions were contrived or impractical. In fact, most of these questions had me read in files (json or csv) and then mimic SQL statements by cranking out lines and lines of business logic. I had no interview where the I was told the equivalent of "implement quick select" (or any other algorithm). An example problem may consist of two csv files mimicking two database tables with a foreign key to each other. You would be required to parse these and then perform operations on them that would combine information from both files to solve a single problem.

Also, depending on the company's language of choice you may want to tailor your solutions to that programming paradigm. I was only interested in positions using the functional programming paradigm so I made sure that I was a whiz with the Java Streams library to get extra brownie points (I got them!).

Check out my [repo] that contains almost 200 method stubs for algorithms questions and over 500 test cases to prepare!

# Pillar Two: Software Architecture

Design questions are the most important part of the technical interview process because they provide you with a full hour to brain dump about your expertise. The ability to brain dump on the interviewer gives them a good sense of what it would be like if you were solving a trickier problem together at work. Compare that to programming interviews where you solve a fairly simple, canned question that doesn't have many design considerations.

How do you ace them? Read the [catalog of services] offered by Amazon Web Services and get an idea of the services available on the internet today--this is not about knowing AWS but rather the range of infrastructure services offered online. Most software teams today will be deploying to the cloud which makes understanding how to build scalable, cheap, cloud applications a must. Also brush up on your operating systems and know the terms [thundering herd], [exponential backoff], [salt], [byzantine fault] and others for designing systems that interact with each other.

# Pillar Three: The Personal Project

This will get you in the door during phone interview/resume screening and will likely not be brought up on site. All that you need here is any mildly interesting problem in the process of being solved by you. [Here] is the one I was discussing during all my phone interviews. I suggest that you play around as much as you can--I used modern technologies (Angular2, AWS Lambda, etc) as well as ones I was very comfortable with (Java, Maven, etc). For example, I used Lambdas for webhooks and since I had this implemented and deployed I was able to go into depth about tradeoffs and design considerations--something I would not be able to do had I just been putting all of this into a monolithic app in a single repo. You tried something and it didn't work? Good, tell them about it.

Add screenshots, CI builds, code coverage/quality metrics and steps to use you application to the repo because they will probably look at it--the CTO of the company I eventually took a job with viewed at all three of the repos I sent him and this was certainly a large part of why they offered me a position.

# Get To Work!

Make some goals, set some deadlines, and put yourself out there!

[repo]:https://github.com/gardncl/elements-of-programming-interviews
[Here]:https://github.com/gardncl/whobrokeitlast
[catalog of services]:https://www.expeditedssl.com/aws-in-plain-english
[thundering herd]:https://en.wikipedia.org/wiki/Thundering_herd_problem
[exponential backoff]:https://en.wikipedia.org/wiki/Exponential_backoff
[salt]:https://en.wikipedia.org/wiki/Salt_(cryptography)
[byzantine fault]:https://en.wikipedia.org/wiki/Byzantine_fault_tolerance