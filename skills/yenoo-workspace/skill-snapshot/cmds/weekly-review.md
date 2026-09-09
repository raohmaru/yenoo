---
name: weekly-review
description: End-of-week review. Summarize the week, close open tasks, and plan next week.
---

# Weekly Review Workflow (Projects focus)

1. Ensure the directory `daily/YYYY/MM/` exists (create if missing).
2. Check if this week's summary exists at `daily/YYYY/MM/YYYY-MM-WW-weekly-W[week number].md.md`:
   - **If not:** create it from the template at `ref/templates/weekly.md` (if the template is missing, create a minimal note with the standard sections and warn the user).
   - **If yes:** read the existing note to merge or overwrite with user input.
3. Read all daily notes from this week (Mon–Sun). If some days are missing, skip them silently and note which dates were absent.  
   Update the status of each daily note to "done".
4. Extract:
   - Completed tasks (✅)
   - Incomplete tasks (still open)
   - Themes and patterns across the week
5. Check every active project in the `projects/` folder:
   - Has at least one open next task?
   - Deadline/target date still valid?
   - Any project that reached `done` but not yet archived? → Flag and offer to archive (see Archiving Procedure below).
   - Resources that might now belong to an active project?
6. Show the user a summary of the weekly review, and then ask they: "Any wins or lessons you want to add before I save?"
7. Generate or update the weekly review note at `daily/YYYY/MM/YYYY-MM-WW-weekly-W[week number].md.md` using the template at `ref/templates/weekly.md`. Update the frontmatter `title`, `created`, and `updated` dates to match the current week.
8. Classify notes in `_inbox/` using the PARA framework.
   - If not possible, ask the user where to place it. If still unclear update frontmatter `status: needs_review`
9. Update `index.md` with any new or changed notes in the folders `archives/`, `areas/`, `projects/` and `resources/`. **Do not index the weekly-review note**.
10. Insert a `weekly-review` entry to `log.md`:
    ```
    ## [YYYY-MM-DD] weekly-review | YYYY-W[week number] Summary
    - Short summary of what was completed, archived, or left open
    ```

## Archiving Procedure

Archive a project when it is clearly completed, historical, or inactive (or user explicitly asks).

1. Ask the user to confirm the archive action.
2. Update frontmatter: `status: archived`
3. Move to `archives/YYYY/`
4. Update `index.md` (move entry from active category to archive section)
5. Log the archive action in `log.md`

## Conventions

- Weekly summaries use `type: summary` and require full frontmatter (per SCHEMA.md).
- Prefer reclassifying inbox notes over leaving them at `needs_review` — only fall back to `needs_review` when classification is genuinely unclear.
- Weekly summaries notes are exempt from the minimum 2 [[wikilinks]] requirement (per SCHEMA.md).