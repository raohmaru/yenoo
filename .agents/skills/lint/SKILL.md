---
name: lint
description: Use when the knowledge base may be internally inconsistent.
context: fork
---

# Lint Workflow

In the `areas/`, `projects/`, `resources/` folders check for:
- Duplicate notes for the same concept / area / project
- Missing YAML frontmatter
- Stale summaries after new evidence
- Orphan notes with no inbound or outbound links
- Notes that lack source pointers

Present findings to the user as a single markdown report:

```
# Lint — 2026-04-10

**Total notes:** 87    **Last log:** 2026-04-09

## Found
- 12 orphan pages (mostly new entities)
- 2 broken links (wiki/concepts/x → [[foo-bar]] no such page)
- 4 stale pages (>90 days, no re-ingest)
- 5 concepts mentioned across 3+ pages without their own page

## Suggested actions
1. Create note for "attention masking" (mentioned in 4 sources) and classify using the PARA framework
2. Fix broken link in [[resources/x]]
3. Cross-reference the 12 orphans

Want me to run these in order, or pick specific ones?
```

Append a `lint` entry to `log.md` summarizing in one short line what was found and what was fixed.

## Workflow Checks

### Stale Claims

For each flagged stale note, ask:
- Does a newer source now contradict this?
- Is a "Key concept" bullet likely to be outdated (person changed role, company pivoted, etc.)?
- If yes, suggest to user: "Note X says Y. This may be outdated — do you want me to search for newer sources?"

### Concepts Mentioned But Without Their Own Note

Grep for common patterns: phrases like "see also", concept-shaped nouns mentioned across 3+ notes but with no dedicated note. Suggest new notes to create.

### Cross-Reference Gaps

For each note, check: do all entities and concepts mentioned have wikilinks? If a concept is referenced as plain text in 3+ places, promote it to a wikilink (and create a note if needed and classify).

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
- `status: archived` but not yet in `archive/` folder
- Project with past deadline and no open tasks

### Finding Inbox Backlog

Notes in `_inbox/` where:
- `status: needs_review`
- Creation date > 7 days ago without classification

### Finding Orphaned Content

Notes where:
- Not linked from any other note
- No tags
- Incomplete YAML frontmatter (see `_ref\SCHEMA.md`)
- Located in root or unclear subfolder

## Index drift

Compare `_ref/index.md` against actual `areas/`, `projects/`, `resources/` and `archive/` contents. If out of sync, either regenerate `_ref/index.md` or patch inline.
