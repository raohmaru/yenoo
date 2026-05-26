---
name: daily
description: Morning planning session. Use at the start of the day to create today's daily note and plan.
---

# Daily Note Workflow

1. Check if today's note exists at `daily/YYYY/MM/YYYY-MM-DD.md`
   - If not, create it using the template at `_ref/templates/daily.md`
2. Read yesterday's daily note — extract any incomplete tasks
3. Read the current week's project notes — surface active priorities
4. If there is no content to extract, ask the user on what he wants to focus today
5. Create today's note with sections:
   - **Focus** (top 3 priorities)
   - **Tasks** (carried over + new)
   - **Notes** (freeform capture)
   - **End of day** (leave empty)
6. Remove placeholder priorities and tasks
7. Ask me if I want to add anything before finishing