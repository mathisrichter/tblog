# Blog

## Goals
- Build a small stand-alone blog with additional static pages about theater, theater festivals, and the free international theater and performance scene.

## Constraints
- Deployable via GitHub Pages (free, static hosting)
- Editable by a novice who cannot program
- Minimal in terms of software dependencies
- Posts will have texts and images
- Pages must load as quickly as possible
- Own domain

## Background
- Content: reviews, festival reports, essays, and interviews about theater pieces and the free international performance scene.
- Multiple authors: a developer and a non-technical editor who must be able to publish independently.

## Technology
- **Static site generator**: Jekyll (natively built by GitHub Pages — no CI/CD pipeline needed)
- **CMS**: Sveltia CMS (drop-in Decap CMS replacement; handles GitHub OAuth client-side, no proxy server needed)
- **Hosting**: GitHub Pages
- **Auth**: Sveltia CMS GitHub OAuth (editor logs in at /admin via GitHub account)

## Terminology
- **Post**: a single piece of content (review, festival report, essay, or interview)
- **Category**: the type of post — one of: `review`, `festival`, `essay`, `interview`
- **Featured image**: the main image displayed at the top of a post and in post listings
- **Excerpt**: a short teaser shown on the home page and in listings

## Structure

### Pages
- `/` — home, paginated list of latest posts
- `/about` — about the blog and author(s)
- `/archive` — all posts by date

### Post frontmatter fields
```yaml
title: "Title of the piece"
date: 2026-03-01
author: "Name"
category: review        # review | festival | essay | interview
tags: [theater, Berlin]
featured_image: /assets/images/post-slug.jpg
excerpt: "Short teaser shown on the home page"
```

### Repository layout
```
_posts/             # YYYY-MM-DD-slug.md — one file per post
_pages/             # about.md, etc.
_layouts/           # default.html, post.html, home.html
_includes/          # header.html, footer.html, post-card.html
assets/
  css/              # one stylesheet
  images/           # post images
_config.yml
Gemfile
admin/
  index.html        # Sveltia CMS entry point
  config.yml        # CMS field definitions
```

### Editor workflow
1. Editor goes to `yourdomain.com/admin`
2. Logs in via GitHub OAuth (handled client-side by Sveltia CMS)
3. Writes post in rich-text editor, uploads images, saves
4. Saving commits a Markdown file to the GitHub repo
5. GitHub Pages rebuilds and publishes automatically (~1–2 min)

## Principles
- Make suggestions for technology.
- Create a plan first and talk that plan through with me.
- Keep the design minimal and fast — no unnecessary JavaScript, no heavy frameworks.
- Prefer simplicity over features; add complexity only when explicitly needed.
