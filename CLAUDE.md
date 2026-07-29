# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

Aldrich Halim's personal blog. Jekyll 4.4 with a hand-written theme — there is no
upstream theme gem and no vendored framework. This repo used to run al-folio; that was
removed entirely in July 2026. If you find a reference to al-folio, jekyll-scholar,
bibliographies, publications, or academic layouts, it is stale and should go.

The whole site is deliberately small: 5 layouts, 4 includes, one stylesheet, one JS
file. Prefer editing those directly over adding a plugin.

## Commands

Local dev (Docker — the only reliable path on this machine, see below):

```bash
docker compose up
```

Serves on <http://localhost:4000> with livereload. `--force_polling` is on so edits
inside the bind mount are picked up.

One-off build, matching CI:

```bash
docker compose run --rm -e JEKYLL_ENV=production jekyll bundle exec jekyll build
```

Formatting — CI runs `prettier --check` on every push and PR, and fails the build:

```bash
npx prettier . --write
```

There is no test suite. A clean `jekyll build` plus Prettier is the whole check.

**The host has no usable Ruby.** System Ruby is 2.6.10; Jekyll 4.4 needs ≥ 2.7, and
there is no rbenv/rvm/mise/Homebrew Ruby installed. `bundle exec` will fail outside
Docker unless someone installs a modern Ruby first.

## Architecture

```
_layouts/    default → home | page | post | archive
_includes/   head, header, footer, post-list
_posts/      published; YYYY-MM-DD-slug.md
_drafts/     excluded from builds; preview with --drafts
assets/css/  main.scss — the entire stylesheet
assets/js/   theme.js — light/dark toggle
index.md     home (layout: home)
blog.md      archive (layout: archive), grouped by year
```

`default.html` is the shell every page passes through; the other four nest inside it
via front matter. `_config.yml` `defaults` apply `layout: post` to everything in
`_posts` and `layout: page` to everything else, so most files need no `layout:` key.

**Styling is one file.** All colours, spacing, and type live as CSS custom properties
at the top of `assets/css/main.scss`. Light is defined on `:root`; dark is defined
twice — once under `@media (prefers-color-scheme: dark)` scoped to
`:root:not([data-theme="light"])`, and once on `:root[data-theme="dark"]` for the
explicit toggle. Any new colour must be added to all the relevant blocks or dark mode
silently breaks. Never hardcode a hex value outside the token blocks.

**Theme toggle is two pieces that must stay in sync:** an inline script in
`_includes/head.html` reads `localStorage.theme` before first paint (this is what
prevents a flash), and `assets/js/theme.js` handles the click. Changing the storage
key or the `data-theme` attribute means changing both.

## Things that will bite you

- **Post dates are evaluated in `America/New_York`** (set in `_config.yml`). A post
  dated today can be silently skipped as "future dated" if it is still yesterday in
  New York — the build prints a `Skipping:` line rather than failing. Check that line
  when a post doesn't appear.
- **Kramdown emits bare `<table>` with no wrapper**, so the table itself is the scroll
  container (`display: block; width: max-content; max-width: 100%`). If you change
  that rule, wide tables will scroll the whole page sideways on mobile.
- **Code blocks break out past the prose measure** only above `43rem` viewport width,
  via a fixed `width: calc(var(--wrap) - 3rem)`. That fixed width would overflow on
  narrow screens, hence the media query — don't lift it out.
- **Prettier's HTML parser mangles Liquid**, so `_layouts/` and `_includes/` are in
  `.prettierignore`. Don't remove those entries.
- **The local git remote is stale.** It points at
  `git@github.com:aldrichhalim/aldrichvhalim.github.io.git`, but the repo was renamed
  to `aldrichhalim/aldrichhalim.github.io`. GitHub redirects, so pushes still work —
  but `gh` and the web UI report the new name. Fix with
  `git remote set-url origin git@github.com:aldrichhalim/aldrichhalim.github.io.git`.
- **Pages deploys from the `gh-pages` branch**, not GitHub Actions Pages
  (`build_type: legacy`, no CNAME). That's why `deploy.yml` pushes the built `_site`
  to `gh-pages` via `JamesIves/github-pages-deploy-action`. Switching to
  `actions/deploy-pages` would also require flipping the Pages source in repo
  settings. It is a User Pages site served at the domain root, so `baseurl` is empty.
- `Gemfile.lock` is gitignored, so CI resolves dependencies fresh on every run.
  Committing it would make builds reproducible if that ever matters.

## Content notes

- The NYU MSc was finished in May 2025; `index.md` says so. Anything implying Aldrich
  is still a student is stale.
- `assets/pdf/Resume-Aldrich-Halim.pdf` is retained but nothing links to it — there is
  no CV page any more. Link it from `index.md` if that changes.
- `_drafts/makmur-react-native-app.md` is the old al-folio project write-up, preserved
  when the projects section was dropped. It still has templated placeholder headings
  ("Decision Process", "Technical Design") and is not publishable as-is.
- `_posts/2026-07-28-theme-kitchen-sink.md` is a typography test page, not real
  content. It says so in its own body and is safe to delete.
