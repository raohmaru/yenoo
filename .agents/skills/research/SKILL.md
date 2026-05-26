---
name: research
description: Research a topic, synthesize findings, and save to resources/ folder.
context: fork
---

# Research Workflow

When asked to research a topic:
1. Search the vault first
  - Read `_ref/index.md` and locate relevant resource notes.  
    If no relevant resource notes are found, check if notes already exist in the vault: `grep -r "topic" resources/`
  - Read the most relevant resource notes and related notes
2. Search the web for current information
3. Synthesize into a structured note:
   - **Overview** (what it is)
   - **Key Concepts** (the important parts)
   - **Connections** (links to existing vault notes)
   - **Sources** (source URLs)
4. Save to `resources/<category>/topic-name.md` using the template at `_ref/templates/resource.md` and the schema defined at `_ref/SCHEMA.md`. Reuse existing category subfolder or create a new one.
5. Strip sensitive data: API keys, tokens, passwords, anything marked private.
6. Add [[wikilinks]] to related notes already in the vault
7. Review the note. Is it well-structured? Does it cite sources? Is it consistent with the rest of the notes? Correct the note as needed.
8. When updating a note, always bump the `updated` date
9. Ask if a new project or area should be created or updated out of the topic
10. Report results to the user about what was done

Append a `research` entry to `_ref/log.md` summarizing in one short line what was researched.

## Conventions

- **Prefer updating existing notes** over creating new ones. Only create a new note when the topic is distinct enough to warrant its own note.