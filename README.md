# aldrichhalim.github.io

Personal site and blog. Jekyll, a hand-rolled minimal theme, no framework.

## Run it

With Docker (nothing to install):

```bash
docker compose up
```

With a local Ruby (needs 3.1+):

```bash
bundle install && bundle exec jekyll serve --livereload
```

Either way the site is at <http://localhost:4000>.

## Write a post

Create `_posts/YYYY-MM-DD-slug.md`:

```yaml
---
title: "What I broke this week"
date: 2026-08-01
tags: [networking, postmortem]
description: One line for search results and the feed.
---
```

`layout: post` is applied automatically. Drafts live in `_drafts/` and are excluded
from builds — preview them with `bundle exec jekyll serve --drafts`.

## Layout

```
_layouts/     default, home, page, post, archive
_includes/    head, header, footer, post-list
_posts/       published posts
_drafts/      unpublished, excluded from builds
assets/css/   main.scss — the entire stylesheet
assets/js/    theme.js — light/dark toggle
index.md      home page
blog.md       archive, grouped by year
```

Colours, spacing, and fonts are CSS custom properties at the top of
`assets/css/main.scss`. Light and dark are defined there and nowhere else.
