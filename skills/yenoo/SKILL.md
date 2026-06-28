---
name: yenoo
description: Second Brain PARA vault workflow. Use for knowledge mgmt, note creation/editing/querying, research synthesis, daily/weekly/monthly reviews, ingestion, and vault health checks following the PARA framework.
license: MIT
metadata:
  author: raohmaru
  version: 1.0.2
  homepage: https://github.com/raohmaru/yenoo
---

# YENOO - Second Brain — Context

Uses the PARA framework (actionability-based organization). Before starting any task, verify `ref/PARA.md` and `ref/SCHEMA.md` exist — if missing, ask user to restore them before proceeding.

## Vault Structure
```
└── vault/
    ├── _attachments/     ← images, PDFs (read-only, ignore)
    ├── _inbox/           ← quick capture, classify during weekly review (writable, maintained by you)
    ├── _raw/             ← unprocessed capture from the user, read-only
    ├── archives/         ← done or inactive, grouped by year subfolders
    ├── areas/            ← ongoing responsibilities, grouped by category subfolders
    ├── daily/            ← daily notes, format YYYY/MM/YYYY-MM-DD.md
    ├── projects/         ← active projects/efforts, grouped by category subfolders
    ├── resources/        ← interests and reference, grouped by category subfolders
    ├── index.md          ← master index for efficient semantic retrieval (maintained by you)
    ├── log.md            ← chronological activity log (insert-only)
    └── tags.md           ← registered tags
```

## Note Format
All notes use YAML frontmatter and conventions defined in `ref/SCHEMA.md`:
- Every note needs: `title`, `created`, `updated`, `type`, `status`, `tags`
- File names: lowercase, hyphens, no spaces
- Minimum 2 outbound `[[wikilinks]]` per page
- When updating a note, always bump the `updated` date
- Use templates from `ref/templates/` when creating new notes

Validate frontmatter exists and is well-formed on creation. If a template is missing for the note type, ask user before creating without one.

## Linking & Tagging
- Use `[[wikilinks]]` for internal connections
- Tag topics with `#tag-name` (lowercase, hyphenated)
- Mark open tasks with `- [ ]`, completed with `- [x]`
- Do not create [[wikilinks]] to nonexistent notes unless the page is planned (ask user first)

## What You Can Do Here
- Create and edit new projects or areas following `ref/SCHEMA.md` and **classify them using the PARA framework**
- Query the vault and answer questions about researched topics
- Link related notes together
- Extract tasks from daily notes into project or area files
- Generate weekly summaries from daily notes
- Research topics and save findings to `resources/<category>`
- Ingest new material into the knowledge base
- Check the health of the knowledge base

### Workflow Commands
User invokes `/yenoo` followed by a sub-command and optional arguments, e.g.:
```
/yenoo daily
/yenoo ingest <source>
/yenoo query <question>
/yenoo lint
```

| Sub-command        | Delegates to             | Description |
| ------------------ | ------------------------ | ----------- |
| `setup`            | `cmds/setup.md`          | create the folder and files structure |
| `research <topic>` | `cmds/research.md`       | research a topic, synthesize findings, and save to a resource document |
| `query <topic>`    | `cmds/query.md`          | answer questions about researched topics in the vault |
| `ingest file.md`   | `cmds/ingest.md`         | ingest new material into the knowledge base |
| `daily`            | `cmds/daily.md`          | create or update today's daily note and plan  |
| `weekly`           | `cmds/weekly-review.md`  | end-of-week review |
| `weekly-review`    | `cmds/weekly-review.md`  | end-of-week review |
| `monthly-review`   | `cmds/monthly-review.md` | end-of-month review |
| `monthly`          | `cmds/monthly-review.md` | end-of-month review |
| `new`              | `cmds/new.md`            | create a new project or area following the PARA framework |
| `lint`             | `cmds/lint.md`           | audit and maintain the health of the vault |

If no sub-command matches or no sub-command is given, print the available sub-commands.


## What You Should NOT Do
- Never delete notes — move to `archives/` instead
- Never change a note's filename without asking first
- Don't create, modify or delete files in `_attachments/` or `_raw/` — sources are immutable
- Don't create empty folders; only create a folder when you have a note to put in it
- Deep nesting: maximum 2 directory levels (`areas/business/invoicing.md` good, deeper bad)
- Don't create notes outside of the `archives/`, `areas/`, `daily/`, `projects/` or `resources/` folders

## Classification Decision Tree
1. **Has deadline/end state?** → `projects/`
2. **Ongoing responsibility (no end)?** → `areas/`
3. **Reference material / general interest?** → `resources/`
4. **Completed/inactive?** → `archives/`
5. **Uncertain?** → ask user. If still unclear move it to `_inbox/`

When reclassifying an existing note (e.g., project → archives), ask user to confirm. On confirmation: move the file, update index, log with `reclassify` op.

## Indexing (`index.md`)

Content-oriented catalog of every page in the `archives/`, `areas/`, `projects/` and `resources/` folders. Update on every create, modify, reclassify, or archive operation. Answer queries by reading this file first, then drilling into relevant pages. Do not turn it into a giant dump.

**How to update:**
- **New note**: add entry under the correct category heading
- **Existing note**: update summary, source count, and `updated` date if the note content changed
- **Archived/moved note**: remove from old category, add to new category or archive section
- **Deleted (not possible)**: never needed — notes are never deleted

Format:
```
# Index

_Updated YYYY-MM-DD • N pages_

## Category-Name (N)
- [[path/to/note|Note Title]] — one-line short summary _(N sources - updated YYYY-MM-DD)_
```

The `source count` is the number of distinct external sources referenced in the note's content (e.g., web articles, papers, books). If the note doesn't cite sources, omit the count: `_(updated YYYY-MM-DD)_`.

## Logging (`log.md`)

Insert-only chronological record of every action. Do not delete or modify any existing content. Insert new entries at the top.

Format:
```
## [YYYY-MM-DD] <op> | <title>
- Short summary (sources, notes modified, result)
```

Valid ops: `research`, `ingest`, `query`, `lint`, `create`, `update`, `note`, `classify`, `reclassify`, `archive`, `move`, `setup`.

The log is parseable with grep: `grep "^## \[" log.md | tail -10` gives the last 10 entries.

## Ambiguity Resolution

If any instruction in this file contradicts `ref/PARA.md`, `ref/SCHEMA.md`, or user requests, ask user to clarify. Do not silently prefer one over the other.