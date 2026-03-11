# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Static website for the GWRM Baltimore Go Club, built with [Eleventy](https://www.11ty.dev/) (static site generator). Uses Pug templates, Markdown content, and SASS/SCSS for styling with Bootstrap 5.

## Commands

- **Dev server:** `npm run watch` (runs sass watch + eleventy serve in parallel)
- **Build for production:** `npm run build` (compiles CSS then HTML to `public/`)
- **Deploy:** `npm run deploy` (rsync to production server — requires SSH access)

Requires Node 20 (see `.nvmrc`). Use `nvm use` before running commands.

## Architecture

- **`eleventy.config.js`** — Eleventy configuration. Sets `views/` as input, `public/` as output, passes through `assets/img` to `img/` and `bootstrap.min.css` to `css/`.
- **`views/`** — Pug templates and Markdown content. Pages extend `_includes/layout.pug`. Markdown partials (prefixed with `_`) live in `views/_includes/` and are included via Pug's `:markdown-it` filter or `include:markdown-it`.
- **`assets/css/`** — SASS/SCSS stylesheets compiled separately via `sass` CLI. `main.scss` imports only `layout.sass` (site-specific styles). Bootstrap is served as pre-built CSS via Eleventy passthrough copy, not compiled from SASS source.
- **`assets/img/`** — Static images (copied to `public/img/` by Eleventy passthrough).
- **`public/`** — Build output (gitignored). Uses clean URLs (`directions/index.html` served as `/directions/`).

## Content Editing

Most content changes happen in `views/`. Pug files define page structure; Markdown files (`_*.md`) in `views/_includes/` contain prose content. The sidebar is `views/_includes/_sidebar.pug`.
