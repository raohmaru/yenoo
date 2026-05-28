# Second Brain — Context

Last updated: 2026-05-26
Uses the PARA framework (actionability-based organization). Before starting any task, verify `_ref/PARA.md` and `_ref/SCHEMA.md` exist — if missing, ask user to restore them before proceeding.

## Vault Structure
```
├── _attachments/     ← images, PDFs (read-only, ignore)
├── _inbox/           ← quick capture, classify during weekly review
├── _raw/             ← unprocessed capture from the user, read-only
├── _ref/
│   ├── templates/    ← note templates
│   ├── index.md      ← master index (maintained by you)
│   ├── log.md        ← chronological activity log (append-only)
│   └── SCHEMA.md     ← note schema
├── archive/          ← done or inactive, grouped by year subfolders
├── areas/            ← ongoing responsibilities, one subfolder each
├── daily/            ← daily notes, format YYYY/MM/YYYY-MM-DD.md
├── projects/         ← active projects/efforts, one subfolder each
└── resources/        ← interests and reference, grouped by category subfolders
```

## Note Format
All notes use YAML frontmatter and conventions defined in `_ref/SCHEMA.md`:
- Every note needs: `title`, `created`, `updated`, `type`, `status`, `tags`
- File names: lowercase, hyphens, no spaces
- Minimum 2 outbound `[[wikilinks]]` per page
- When updating a note, always bump the `updated` date
- Use templates from `_ref/templates/` when creating new notes

Validate frontmatter exists and is well-formed on creation. If a template is missing for the note type, ask user before creating without one.

## Linking & Tagging
- Use `[[wikilinks]]` for internal connections
- Tag topics with `#tag-name` (lowercase, hyphenated)
- Mark open tasks with `- [ ]`, completed with `- [x]`
- Do not create [[wikilinks]] to nonexistent notes unless the page is planned (ask user first)

## What You Can Do Here
- Create and edit notes following `_ref/SCHEMA.md` and **classify them using the PARA framework**
- Query the vault and answer questions about researched topics
- Link related notes together
- Extract tasks from daily notes into project or area files
- Generate weekly summaries from daily notes
- Research topics and save findings to `resources/<category>`
- Ingest new material into the knowledge base
- Check the health of the knowledge base

### Workflow Commands
- `/research <topic>` — research a topic, synthesize findings, and save to `resources/<category>` folder.
- `/query <topic>` — answer questions about researched topics in the vault
- `/ingest _raw/file.md` — Ingest new material into the knowledge base
- `/daily` — create or update today's daily note and plan 
- `/weekly-review` — end-of-week review
- `/monthly-review` — end-of-month review
- `/lint` — audit and maintain the health of the vault

## What You Should NOT Do
- Never delete notes — move to `archive/` instead
- Never change a note's filename without asking first
- Don't create, modify or delete files in `_attachments/` or `_raw/` — sources are immutable
- Don't create empty folders; only create a folder when you have a note to put in it
- Deep nesting: maximum 2 directory levels (`areas/business/invoicing.md` good, deeper bad)

## Classification Decision Tree
1. **Has deadline/end state?** → `projects/`
2. **Ongoing responsibility (no end)?** → `areas/`
3. **Reference material / general interest?** → `resources/`
4. **Completed/inactive?** → `archive/`
5. **Uncertain?** → ask user. If still unclear → `_inbox/`

When reclassifying an existing note (e.g., project → archive), ask user to confirm. On confirmation: move the file, update index, log with `reclassify` op.

## Indexing (`_ref/index.md`)

Content-oriented catalog of every page in `areas/`, `projects/`, `resources/` and `archive/`. Update on every create, modify, reclassify, or archive operation. Answer queries by reading this file first, then drilling into relevant pages. Do not turn it into a giant dump.

**How to update:**
- **New note**: add entry under the correct category heading
- **Existing note**: update summary, source count, and `updated` date if the note content changed
- **Archived/moved note**: remove from old category, add to new category or archive section
- **Deleted (not possible)**: never needed — notes are never deleted

Format:
```
# Index

_Updated 2026-05-20 • N pages_

## Category-Name (N)
- [[path/to/note|Note Title]] — one-line short summary _(N sources - updated YYYY-MM-DD)_
```

The `source count` is the number of distinct external sources referenced in the note's content (e.g., web articles, papers, books). If the note doesn't cite sources, omit the count: `_(updated YYYY-MM-DD)_`.

## Logging (`_ref/log.md`)

Append-only chronological record of every action. Do not delete or modify any existing content. Append new entries at the top.

Format:
```
## [YYYY-MM-DD] <op> | <title>
- Short summary (sources, notes modified, result)
```

Valid ops: `research`, `ingest`, `query`, `lint`, `create`, `update`, `delete`, `note`, `classify`, `reclassify`, `archive`, `move`.

The log is parseable with grep: `grep "^## \[" _ref/log.md | tail -10` gives the last 10 entries.

## Ambiguity Resolution

If any instruction in this file contradicts `_ref/PARA.md`, `_ref/SCHEMA.md`, or user requests, ask user to clarify. Do not silently prefer one over the other.