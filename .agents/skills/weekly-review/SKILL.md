---
name: weekly-review
description: End-of-week review. Summarize the week, close open tasks, and plan next week.
---

# Weekly Review Workflow (Projects focus)

1. Ensure the directory `daily/YYYY/MM/` exists (create if missing).
2. Check if this week's summary exists at `daily/YYYY/MM/WW-weekly.md`:
   - **If not:** create it from the template at `_ref/templates/weekly.md` (if the template is missing, create a minimal note with the standard sections and warn the user).
   - **If yes:** read the existing note to merge or overwrite with user input.
3. Read all daily notes from this week (Mon–Fri). If some days are missing, skip them silently and note which dates were absent.
4. Extract:
   - Completed tasks (✅)
   - Incomplete tasks (still open)
   - Themes and patterns across the week
5. Check every active project in the `projects/` folder:
   - Has at least one open next task?
   - Deadline/target date still valid?
   - Any project that reached `done` but not yet archived? → Flag and offer to archive (see Archiving Procedure below).
   - Resources that might now belong to an active project?
6. Classify notes in `_inbox/` using the PARA framework.
   - If not possible, ask the user where to place it. If still unclear update frontmatter `status: needs_review`
7. Generate or update the weekly summary note at `daily/YYYY/MM/WW-weekly.md` using the template at `_ref/templates/weekly.md`. Update the frontmatter `title`, `created`, and `updated` dates to match the current week.
8. Update `_ref/index.md` with any new or changed notes.
9. Ask: "Any wins or lessons you want to add before I save?"
10. Append a `weekly-review` entry to `_ref/log.md` summarizing in one short line what was completed, archived, or left open.

## Archiving Procedure

Archive a project when it is clearly completed, historical, or inactive (or user explicitly asks).

1. Ask the user to confirm the archive action.
2. Update frontmatter: `status: archived`
3. Move to `archive/YYYY/`
4. Update `_ref/index.md` (move entry from active category to archive section)
5. Log the archive action in `_ref/log.md`

## Conventions

- Weekly summaries use `type: summary` and require full frontmatter (per SCHEMA.md).
- Prefer reclassifying inbox notes over leaving them at `needs_review` — only fall back to `needs_review` when classification is genuinely unclear.