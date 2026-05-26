# Note Schema

## Conventions
- File names: lowercase, hyphens, no spaces (e.g., `transformer-architecture.md`)
- Every note starts with YAML frontmatter (see below)
- Use `[[wikilinks]]` to link between pages (minimum 2 outbound links per page)
- When updating a note, always bump the `updated` date

## Frontmatter

Applies to all notes except daily notes.

```yaml
---
title: Page Title
created: YYYY-MM-DD
updated: YYYY-MM-DD
type: project | area | resource | daily | summary
status: active | on-hold | done | archived | reference | needs_review
tags: [from taxonomy below]
---
```

## Tag Taxonomy

Add new tags here BEFORE using them.

* tag-1

Rule: every tag on a page must appear in this taxonomy. If a new tag is needed, add it here first, then use it. This prevents tag sprawl.

## Note Templates

Create new notes using the templates at `_ref/templates/`:
- Daily: `_ref/templates/daily.md`
- Resource: `_ref/templates/resource.md`
- Area: `_ref/templates/area.md`
- Project: `_ref/templates/project.md`