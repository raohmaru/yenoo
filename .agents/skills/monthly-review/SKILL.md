---
name: monthly-review
description: End-of-month review. Summarize the month, close open tasks, review ongoing areas, and plan next month.
---

# Monthly Review Workflow (Areas + Resources focus)

1. Read all weekly summary notes from this month
2. Extract:
   - Completed tasks (✅)
   - Incomplete tasks (still open)
   - Themes and patterns across the month
   - New notes created in `projects/` and `areas/` (check `_ref/index.md` for latest activity in the vault)
3. Check:
   - Any Area without an update in 30+ days? Flag for attention.
   - Any Area that has become a completed project? Reclassify.
   - Resources that are clearly obsolete or superseded?
   - Duplicate notes or heavily overlapping content?
   - Projects with `done` status for 30+ days → archive
4. Ensure areas reflect current priorities
5. Generate monthly summary note at `daily/YYYY/MM/monthly.md`:
   ```
   ## What got done
   ## What didn't (and why)
   ## Patterns this month
   ## Areas
   - Active/ongoing responsibilities
   - Areas without updates for > 30 days
   - [list if any]
   ## Resources
   - [N] Resources potentially related to projects
   - [N] Outdated or potentially obsolete resources
   - [list if any]
   ## Archived projects
   ## Open decisions [Notes with `needs_review: true`]
   ## Next month priorities
   1. [Highest priority action]
   2. [Second priority]
   3. [etc.]
   ```
6. Ask: "Any wins or lessons you want to add before I save?"

## Archiving Criteria

Archive a note only when ALL of these apply (or user explicitly asks):
1. The content is clearly completed, historical, or inactive

### Archiving Procedure

1. Update frontmatter: `status: archived`
2. Move to `archive/YYYY/`
3. Log the archive action in `_ref/log.md`

### Never Archive

- Notes with `status: needs_review` (resolve the review first)
- Notes with `status: on-hold` (that's a pause, not completion)