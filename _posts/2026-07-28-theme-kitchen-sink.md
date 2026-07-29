---
title: "Theme kitchen sink"
date: 2026-07-28
tags: [meta]
description: Every element the theme styles, on one page. Delete this once you've had a look.
---

This post exists to exercise the typography. It is **safe to delete** — remove
`_posts/2026-07-28-theme-kitchen-sink.md` and it disappears from the site, the
archive, and the feed.

## Headings and prose

Body copy sits on a measure of about 65 characters, which is the width your eye can
track without losing the line. Long-form reading is the whole point, so the measure
wins over filling the viewport.

### A third-level heading

Inline formatting: **bold**, _italic_, `inline_code()`, [a link](https://jekyllrb.com/),
and <kbd>⌘</kbd> + <kbd>K</kbd> for keys.

#### A fourth-level heading

Fourth-level headings are muted, on the theory that if you need four levels the
document probably wants splitting anyway.

## Code

Fenced blocks get syntax highlighting from Rouge, and stretch past the prose measure
on wide screens because code lines are longer than sentences.

```python
def detect_anomaly(flow, threshold=0.87):
    """Score a flow without touching the payload."""
    features = extract_timing_features(flow)  # inter-arrival, burst, direction
    score = model.predict_proba([features])[0][1]

    if score > threshold:
        return Verdict(flow.id, "suspicious", confidence=score)
    return Verdict(flow.id, "benign", confidence=1 - score)
```

```bash
bundle exec jekyll serve --livereload
```

A block with no language set:

```
GET /feed.xml HTTP/1.1
Host: aldrichhalim.github.io
Accept: application/atom+xml
```

## Quotes and rules

> The payload is encrypted, so you classify the shape of the conversation instead of
> its contents — timing, burst size, direction. It works better than it has any right
> to.

---

## Lists

Unordered:

- Networks that misbehave under load
- Financial systems that are harder than they look
- Postmortems, ideally of my own outages

Ordered:

1. Reproduce it
2. Write the failing test
3. _Then_ fix it

Nested:

- Infrastructure
  - EC2 and load balancers
  - RDS and ElastiCache
- Application
  - React Native client
  - Node API

## Tables

| Layer    | Tool              | Notes                        |
| -------- | ----------------- | ---------------------------- |
| Client   | React Native      | One codebase, two app stores |
| API      | Node + TypeScript | REST, boring on purpose      |
| Data     | RDS + ElastiCache | Daily NAV recompute at close |
| Delivery | GitHub Actions    | Builds and deploys on push   |

Wide tables scroll inside their own container rather than pushing the page sideways.

## Images

![Placeholder]({{ '/assets/img/personal.jpg' | relative_url }})

Images are rounded, capped to the content width, and never overflow.
