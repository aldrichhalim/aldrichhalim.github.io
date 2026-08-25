---
title: "Thoughts on Vibe Coding"
date: 2026-08-20
tags: [blog, tech, ai, vibe, coding]
description: Lessons from a real engineer that reads, maintains, and writes code for work
---

I want to share my experiences on **vibe-coding**, a term coined by [Andrej Karpathy](https://karpathy.ai/)
around the dawn of agentic coding and engieering.

## First Experimentation

In my own experiences, if you really want to know something is really working or not,
you really have to build your own real-world project and use it in your daily lives.
I've first experiment with small websites and landing pages. Like a lot of engineers and
[Reddit](https://www.reddit.com/r/vibecoding/) comments on the internet, you'd expect a similar
boxy and templated landing pages you see a lot on the internet.
My first impression was that it felt like magic. The AI spit
out code without even thinking, and I don't have to read all the code to understand and
have a project running. In essence, the experience reminded me of when you found somewhat
of a similar project that you're currently working on, cloning it from GitHub, and then running
it on your machine. But this is something more, as you can tailor and make changes to
what you really want without even understanding the code.

Then, I tried CLI apps using Python. I made a news scrapper automation using free
news APIs. The premise was simple: I wanted to read more news without being bogged down
by headlines and ads. This time, my coding flow also had a step up. I followed YouTube
guidance on writing a good Claude plan, and then reviewing the plan before writing.
The result? It still felt like magic. Even though I hinted on the project structure,
the functions, and the initial logics, AI still does a lot of stuff that I don't think
aligns with what I initially plan. Still, the code worked and ran perfectly fine.
But even a slight bug or mismatch would tear down the whole app / chunk of logic and forces
the maintainer to rewrite the whole code.

## Using it for Work

After my personal experimentation, I started to bring my workflow to work. There was
a microservice that was handed over to me when the senior engineer left. I was involved
in some PRs in the code, but the majority of the code were refactored and I didn't
feel like I have enough grasp of the whole code. It was early 2026 and by March, there
was a hard deadline for a feature that needed to ship for the Q2. After the departing
engineer finalized the last refactor, it was up to me to code and ship the new features
from now on.

My gut feeling then told me that this was a good time to use Claude Code. First, it handed
me with a real problem that needed to be solved. Second, we're dealing with a real codebase
that was previously untouched by AI. So, it's mostly organic hand-written code. I wanted to
see how AI can pick up the details business logic from inside the code. Oh, and note if
you want to do this yourself and your company doesn't have an AI policy yet, please do turn off
the "Help improve our AI models" in your privacy settings. So there I was, letting my LLM analyze
the first ever production codebase using the `/init` command.

After the mandatory `CLAUDE.md` generation, I went to plan mode and start explaning the requirements.
It was creating a plugin system where I could dynamically implement a logic feature by extending
a base class with all the requirements. Then, I would create the first plugin required for the
Q2 feature. So, it was a two sequential tasks. The first one being the low-level support in
the microservice itself, and the latter being the high-level business logic that is attached
to the service. With a few back and forth prompt and all my Opus token credits in that session, I managed to
create the initial prototype in around 30 minutes.

The result? There are two tasks that were given. Let's go through each one in detail.

### Refactoring Large Codebases

I wouldn't necessarily call the code base large. In any case, I think it's pretty lean for a microservice.
To put into perspective, it has around ~5 user routes, a few admin routes, and the rest (15+) routes are all
schedulers and cron jobs. So, it's a system centric microservice. The plugin system that I mentioned
before need to touch all interfacing (user, admin, and system) APIs. So, you can imagine that it
touched more than 2-3 files.

The result were decent, at best. I used Opus with High effort throughout this test. It managed
to create the blueprint quite well, and I was happy with the overall approach of the code.
The interfaces were clean, and the next step for the job was well defined. The most important part
is that I can see the real cost benefit of using this: it saves a lot of time in coding boilerplates.
AI are specifically well in doing this sort of building or laying out the infrastructure to existing
code base. I can confidently say that this experience is an upgrade from my previous experimentation,
where the AI can freely choose what kind of structure it want to build.

### Here Comes the Business Logic

- the thing?

- the result => churn

- reflecting?

## Second Try, SaaS App

- template using paddle nextjs

### The good

### The bad

## Reviving The SaaS App

- tried something smaller, a desktop app

### The good

### The bad

## Conclusion

- takeaways:
- scafolding new project : 1
- refactoring large code base : 3
- writing boilerplates : 2
- writing business logics: 2
- language choices: 1
- design: 1
- overal readibility: 1
