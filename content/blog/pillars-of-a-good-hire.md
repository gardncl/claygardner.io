---
title: "Pillars Of A Good Hire"
description: "How to break into your first serious software engineering job"
date: 2017-08-27T14:32:04-04:00
tags: ["job interviews"]
---

Are you looking to break into the tech industry? Get out of that mindless software contracting job? This guide is for you!

There are three pillars that I based my preparation for job interviews on recently that lead to multiple job offers--including one that doubled my base salary. I believe that working through these three pillars will make you a strong enough candidate to 'upgrade' your career one level. What I mean by this is that you can jump one level--such as being outside of the industry to getting your first development job. In my case I moved from a Jr. Engineer at a government contractor with a little over a year's experience to a Mid level engineer at a fast paced start up in exactly the position I wanted having only done about four months of preparation outside of work.

# Pillar One: Business Logic

You must be able to crank out business logic in your language of choice. This requires brushing up on data structures and algorithms and really understanding how to utilize them. Over the six companies that I had technical interviews with none of the programming questions were contrived or impractical. In fact, most of these questions had me read in files (json format) and then mimic SQL statements by cranking out lines and lines of business logic. I had no interview where the I was told the equivalent of "implement quick select" (or any other algorithm). An example problem may consist of two json files storing data like two tables in a database with a foreign key to each other and you would be required to parse these and then perform operations on them that would combine information from both files to solve a single problem.

Also, depending on the company's language of choice you may want to tailor your solutions to that. I was only interested in positions using the functional programming paradigm so I made sure that I was a whiz with the Java Streams library to get extra brownie points (I got them!).

Check out my [repo] that contains almost 200 method stubs for algorithms questions and over 500 test cases to prepare!

# Pillar Two: Software Architecture

Design questions are the most important part of the technical interview process because they provide you with a full hour to show an interviewer everything you know as opposed to the coding questions where you solve the question at hand and maybe are able to show a little flair.

How do you ace them? Read the [catalog of services] offered by Amazon Web Services and get an idea of the services available on the internet today--this is not about knowing AWS but rather the range of infrastructure services offered online. Most of the jobs you will be applying for from here on will be deploying to the cloud and understanding the offerings available is key to building scalable, cheap applications. Also brush up on your operating systems and know the terms [thundering herd], [exponential backoff], [salt], [byzantine fault] and others for designing systems that interact with each other.

# Pillar Three: The Personal Project

These get you in the door during phone interviews/resume screening and will likely not be brought up on site. All that you need here is any mildly interesting problem in the process of being solved by you. [Here] is the one I was discussing during all my phone interviews. The thing to do here is play as much as you can--I used modern technologies (Angular2, AWS Lambda, etc) as well as ones I was very comfortable with (Java, Maven, etc). For example, I used Lambdas for webhooks and since I had this implemented and deployed I was able to go into depth about tradeoffs and design considerations--something I would not be able to do had I just been putting all of this into a monolithic app in a single repo.

Add screenshots, CI builds, code coverage/quality metrics and steps to use you application to the repo because they will probably look at it if the company is small enough--the CTO of the company I eventually took a job with looked at all three of the repos I sent him and I am certain this was a large part of why they offered me a position.

# Get To Work!

Make some goals, set some deadlines, and put yourself out there!

[repo]:https://github.com/gardncl/elements-of-programming-interviews
[Here]:https://github.com/gardncl/whobrokeitlast
[catalog of services]:https://www.expeditedssl.com/aws-in-plain-english
[thundering herd]:https://en.wikipedia.org/wiki/Thundering_herd_problem
[exponential backoff]:https://en.wikipedia.org/wiki/Exponential_backoff
[salt]:https://en.wikipedia.org/wiki/Salt_(cryptography)
[byzantine fault]:https://en.wikipedia.org/wiki/Byzantine_fault_tolerance