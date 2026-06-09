---
name: monthly-review
description: End-of-month review. Summarize the month, close open tasks, review ongoing areas, and plan next month.
---

# Monthly Review Workflow (Areas + Resources focus)

1. Ensure the directory `daily/YYYY/MM/` exists (create if missing).
2. Check if this month's summary exists at `daily/YYYY/MM/monthly.md`:
   - **If not:** create it from the template at `ref/templates/monthly.md` (if the template is missing, create a minimal note with the standard sections and warn the user).
   - **If yes:** read the existing note to merge or overwrite with user input.
3. Read all weekly summary notes from this month (`daily/YYYY/MM/*-weekly.md`):
   - If none exist, read the daily notes from this month instead and warn the user.
4. Extract:
   - Completed tasks (✅)
   - Incomplete tasks (still open)
   - Themes and patterns across the month
   - New notes created in `projects/` and `areas/` (check `index.md` for latest activity)
5. Check:
   - Any Area without an update in 30+ days? → Flag for attention.
   - Any Area that has become a completed project? → Follow the reclassification procedure (ask user → move → update index → log).
   - Resources that are clearly obsolete or superseded? → Ask the user if they want to research for newer sources
   - Duplicate notes or heavily overlapping content? → see Duplicated Notes
   - Projects with `done` status for 30+ days → Flag and offer to archive (see Archiving Procedure below).
6. Ensure areas reflect current priorities.
7. Generate or update the monthly summary note at `daily/YYYY/MM/monthly.md` using the template at `ref/templates/monthly.md`. Update the frontmatter `title`, `created`, and `updated` dates to match the current month.
8. Update `index.md` with any new or changed notes.
9. Ask: "Any wins or lessons you want to add before I save?"
10. Insert a `monthly-review` entry to `log.md` summarizing in one short line what was archived, any reclassifications, and key patterns found.

## Archiving Procedure

Archive a note when it is clearly completed, historical, or inactive (or user explicitly asks).

1. Ask the user to confirm the archive action.
2. Update frontmatter: `status: archived`
3. Move to `archives/YYYY/`
4. Update `index.md` (move entry from active category to archive section)
5. Log the archive action in `log.md`

### Never Archive

- Notes with `status: needs_review` (resolve the review first)
- Notes with `status: on-hold` (that's a pause, not completion)

## Duplicated Notes

Ask the user when there are duplicate notes or heavily overlapping content:
- Merge the notes?
- Archive one of the notes?
- Flag the note as `status: needs_review` (update frontmatter) and move it to  `_inbox/`?

## Conventions

- Monthly summaries use `type: summary` and require full frontmatter (per SCHEMA.md).
- When reclassifying an area to a project, ask the user first — never reclassify without confirmation.