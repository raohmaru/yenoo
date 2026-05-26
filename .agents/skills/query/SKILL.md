---
name: query
description: Use when the user asks a question about the knowledge base (researched topics).
---

# Query Workflow

When asked about a topic:
1. Search the vault
  - Read `_ref/index.md` and locate relevant resource notes
  - If no relevant resource notes are found, check if notes already exist `grep -r "topic" resources/`
2. Read the most relevant resource notes and related notes
3. Fall back to raw sources (`_raw/`) only if the wiki is missing detail.
4. Answer the question.
5. If the answer revealed a gap, ask the user if he wants to run the skill `/research` to research further the topic.

Append a `query` entry to `_ref/log.md` summarizing what was asked.

## Conventions

Prefer reading 2–5 good notes over sweeping the entire vault.

## Anti-patterns

- Read every note in `resources/` on every query → use the index
- Answer without citations → every claim must link to a note
- Create a new note for a one-off trivial question → only file back answers worth keeping
- Invent content not in the vault → if you don't know, say so and suggest a new source to ingest
- Skip the log.md entry when filing an answer back
