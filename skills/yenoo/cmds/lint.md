---
name: lint
description: Use when the knowledge base may be internally inconsistent.
context: fork
---

# Lint Workflow

In the `archives/`, `areas/`, `projects/` and `resources/` folders check for:
- Duplicate notes for the same concept / area / project
- Missing YAML frontmatter
- Stale resource notes after new evidence (notes in `resources/` which update date is older than 90 days)
- Orphan notes with fewer than 2 outbound `[[wikilinks]]` (per SCHEMA.md)
- Notes that lack source pointers

Present findings to the user as a single markdown report:

```
# Lint — {YYYY-MM-DD}

**Total notes:** {N}    **Last log:** {YYYY-MM-DD}

## Found
- 12 orphan notes (mostly new entities)
- 2 broken links (wiki/concepts/x → [[foo-bar]] no such note)
- 4 stale resource notes (>90 days, no re-ingest)
- 5 concepts mentioned across 3+ notes without their own note

## Suggested actions
1. Suggest creating a note for "attention masking" (mentioned in 4 sources) — ask user first before creating
2. Fix broken link in [[resources/x]]
3. Cross-reference the 12 orphans

Want me to run these in order, or pick specific ones?
```

## Workflow Checks

### Orphaned Notes

Find notes with zero incoming wikilinks. These are knowledge islands that nothing connects to.

**How to check:**
- Glob all `.md` files in the `archives/`, `areas/`, `projects/` and `resources/` folders
- For each note, grep the rest of the `.md` files for `[[note-name]]` references
- Notes with zero incoming links (except `index.md` and `log.md`) are orphans

**How to fix:**
- Identify which existing notes should link to the orphan
- Add wikilinks in appropriate sections

### Broken Wikilinks

Find `[[wikilinks]]` that point to notes that don't exist.

**How to check:**
- Grep for `\[\[.*?\]\]` across all `.md` files in the `archives/`, `areas/`, `projects/` and `resources/` folders
- Extract the link targets
- Check if a corresponding `.md` file exists

**How to fix:**
- If the target was renamed, update the link
- If the target should exist, create it
- If the link is wrong, remove or correct it

### Missing Frontmatter

Every note in in the `archives/`, `areas/`, `projects/` and `resources/` folders should have: title, created, updated, type, status, tags.

**How to check:**
- Grep frontmatter blocks (scope to `^---` at file heads) instead of reading every note in full
- Flag notes missing required fields

**How to fix:**
- Add missing fields with reasonable defaults

### Stale Claims

For each flagged stale note, ask:
- Does a newer source in `resources/` now contradict this?
- Is a "Key concept" bullet likely to be outdated (person changed role, company pivoted, etc.)?
- If yes, suggest to user: "Note X says Y. This may be outdated — do you want me to search for newer sources?"

### Concepts Mentioned But Without Their Own Note

Grep for common patterns: phrases like "see also", concept-shaped nouns mentioned across 3+ notes but with no dedicated note. Suggest new notes to create — ask the user before creating any new note.

### Cross-Reference Gaps

For each note, check: do all entities and concepts mentioned have wikilinks? If a concept is referenced as plain text in 3+ places, promote it to a wikilink. If creating a new note, ask the user first (per AGENTS.md: do not create wikilinks to nonexistent notes unless planned).

## Hygiene Checks

### Finding Projects Without Next Steps

Look for notes in `projects/` where:
- No `- [ ]` checkbox exists in the body
- `status` is `active` but no tasks visible

### Finding Stale Areas

Areas in `areas/` where:
- Last modified date > 30 days ago (for weekly-reviewed areas)
- Last modified date > 90 days ago (for any area)

### Finding Archive Candidates

Notes where ANY of these are true:
- `status: done` for 30+ days
- Explicit "abgeschlossen", "erledigt" in content or title
- `status: archived` but not yet in `archives/` folder
- Project with past deadline and no open tasks

### Finding Inbox Backlog

Notes in `_inbox/` where:
- `status: needs_review`
- Creation date > 7 days ago without classification

### Finding Orphaned Content

Notes where:
- Not linked from any other note
- No tags
- Incomplete YAML frontmatter (see `ref/SCHEMA.md`)
- Located in root or unclear subfolder

## Index drift

Compare `index.md` against actual `archives/`, `areas/`, `projects/` and `resources/` folder contents. If out of sync, either regenerate `index.md` or patch inline.

## Add to log

Append a `lint` entry to `log.md`:
```
## [YYYY-MM-DD] lint | Lint findings
- Short summary of what was found and what was fixed
```

## Conventions

- Lint is diagnostic — suggest fixes, but ask the user before creating new notes, files, or wikilinks to nonexistent notes
- Follow SCHEMA.md for all frontmatter and formatting rules
- Bump `updated` dates in any notes modified during fixes