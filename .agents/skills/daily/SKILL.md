---
name: daily
description: Morning planning session. Use at the start of the day to create or update today's daily note and plan.
---

# Daily Note Workflow

1. Ensure the directory `daily/YYYY/MM/` exists (create if missing).
2. Check if today's note exists at `daily/YYYY/MM/YYYY-MM-DD.md`:
   - **If not:** create it from the template at `_ref/templates/daily.md` (if the template is missing, create a minimal note with the standard sections and warn the user).
   - **If yes:** read the existing note to preserve any content already written.
3. Read yesterday's daily note (if it exists) — extract any incomplete tasks.
4. Scan the `projects/` folder for active projects to surface current priorities.
5. If tasks were extracted from yesterday or priorities surfaced from projects, populate today's note with:
   - **Focus** (top 3 priorities)
   - **Tasks** (carried-over items + new tasks)
   - **Notes** (freeform capture)
   - **End of day** (leave empty for later)
   Then proceed to step 7.
6. If no content was extracted (no yesterday note, no active projects, not tasks), ask the user what they want to focus on today.
7. Ask the user: "Anything to add before I save?"
8. Append a `daily` entry to `_ref/log.md` summarizing the note's date and any notable carry-over or focus shifts.

## Conventions

- Daily notes are exempt from the minimum 2 [[wikilinks]] requirement (per SCHEMA.md). Do not create links from daily notes.