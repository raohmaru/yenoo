# Note Schema

## Conventions
- File names: lowercase, hyphens, no spaces (e.g., `transformer-architecture.md`)
- Every note starts with YAML frontmatter (see below)
- Daily notes use the format `YYYY-MM-DD.md`
- Use `[[wikilinks]]` to link between pages (minimum 2 outbound links per page)
- When updating a note, always bump the `updated` date to today

## Frontmatter

Applies to all notes.

```yaml
---
title: Page Title           # required — human-readable title
created: YYYY-MM-DD         # required — date note was first created
updated: YYYY-MM-DD         # required — date of last modification (set same as created on new notes)
type: project | area | resource | daily | summary   # required
status: active | on-hold | done | archived | reference | needs_review  # required
tags: [tag-one, tag-two]    # required — must come from taxonomy below
---
```

Field details:
- `type: daily` — only valid for daily notes (`daily/YYYY-MM-DD.md`); daily notes follow the same frontmatter rules as other notes
- `type: summary` — for generated summaries (weekly roundups, topic syntheses); follows the same frontmatter rules as other notes
- `tags` — each tag must be registered in the taxonomy below before use
- `status: reference` — for resource-type notes that are stable reference material, not actively maintained

## Tag Taxonomy

Add new tags here in the "Registered tags" section **BEFORE** using them. Every tag on a page must appear in this taxonomy to prevent tag sprawl.

Usage:
1. Think of a short, lowercase, hyphenated tag name (e.g., `machine-learning`)
2. Add it to the list below as `* tag-name`
3. Reference it in frontmatter as `tags: [tag-name]` or `tags: [tag-one, tag-two]

Registered tags:
* daily
* weekly
* monthly

## Note Templates

Create new notes using the templates at `_ref/templates/`:
- **Daily:** `_ref/templates/daily.md` (includes frontmatter)
- **Resource:** `_ref/templates/resource.md` (includes frontmatter)
- **Project:** `_ref/templates/project.md` (includes frontmatter)
- **Area:** `_ref/templates/area.md` (includes frontmatter)
- **Weekly Summary:** `_ref/templates/weekly.md` (includes frontmatter)
- **Monthly Summary:** `_ref/templates/monthly.md` (includes frontmatter)

Templates contain placeholder frontmatter with `created` and `updated` pre-set; fill in the remaining fields on creation.