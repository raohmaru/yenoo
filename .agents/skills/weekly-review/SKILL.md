---
name: weekly-review
description: End-of-week review. Summarize the week, close open tasks, and plan next week.
---

# Weekly Review Workflow (Projects focus)

1. Read all daily notes from this week (Mon–Fri)
2. Extract:
   - Completed tasks (✅)
   - Incomplete tasks (still open)
   - Themes and patterns across the week
3. Check every active project in the `projects/` folder:
   - Has at least one open next task?
   - Deadline/target date still valid?
   - Any project that reached `done` but not yet archived?
   - Resources that might now belong to an active project?
4. Classify notes in `_inbox/` using the PARA framework.
   - If not possible, update frontmatter `status: needs_review`
5. Generate weekly summary note at `daily/YYYY/MM/WW-weekly.md`:
   ```
   ## What got done
   ## What didn't (and why)
   ## Patterns this week
   ## Projects
    - Projects without next steps
    - Projects with possible completion (status: done or no activity > 14 days)
    - [list if any]
   ## Unclassified notes in Inbox
   ## Next week priorities
   1. [Highest priority action]
   2. [Second priority]
   3. [etc.]
   ```
6. Ask: "Any wins or lessons you want to add before I save?"