# Second Brain — Context

Last updated: 2026-05-26

It uses the PARA framework, a knowledge organization system. It organizes everything into four categories based on actionability. Read `_ref/PARA.md` for the PARA framework reference before starting any task.

## Vault Structure
```
├── _attachments/     ← images, PDFs (ignore these)
├── _inbox/           ← quick capture, classify during weekly review
├── _raw/             ← unprocessed capture, process via ingest
├── _ref/
│   ├── templates/    ← note templates
│   ├── index.md      ← master index (maintained by you)
│   ├── log.md        ← chronological ingest/lint/query log (append-only)
│   └── SCHEMA.md     ← note schema
├── archive/          ← done or inactive, grouped by year subfolders
├── areas/            ← ongoing responsibilities, one subfolder each
├── daily/            ← daily notes, format YYYY-MM-DD.md
├── projects/         ← active projects/efforts, one subfolder each
└── resources/        ← interests and reference material, grouped by category subfolders
```

## Note Format
All notes use YAML frontmatter and conventions defined in `_ref/SCHEMA.md`. Validate frontmatter exists on creation.

## Linking & Tagging
- Use [[wikilinks]] for internal connections
- Tag topics with `#tag-name` (lowercase, hyphenated)
- Mark open tasks with `- [ ]`, completed with `- [x]`

## What You Can Do Here
- Create and edit notes following the format defined in `_ref/SCHEMA.md` and **classify them using the PARA framework**
- Search vault and answer questions about the researched topics (knowledge base)
- Link related notes together
- Extract tasks from daily notes into project files
- Generate weekly summaries from daily notes
- Research topics and save findings to `resources/<category>`

## What You Should NOT Do
- Never delete notes — move to `archive/` instead
- Never change a note's filename without asking first
- Don't create or modify files in `_attachments/` or `_raw/`. Sources are immutable.
- Deep nesting: maximum 2 directories levels (`areas/business/invoicing.md` good, deeper bad).

## Classification Decision Tree
- Has deadline/end state? → `projects/`
- Ongoing responsibility? → `areas/`
- Reference material? → `resources/`
- Completed/inactive? → `archive/`
- Unclear? → `_inbox/`

## Indexing and Logging

### Index (`_ref/index.md`)
Content-oriented catalog of every page in `areas/`, `projects/`, `resources/` and `archive/`. Each resource note listed with a link, metadata (update date and source count), and a one-line short summary. Organized by category. Update it on every research or ingest. Answer queries by reading this file first, then drilling into relevant pages. Do not turn it into a giant dump of every page.

Format:
```
# Index

_Updated 2026-05-20 • 4 pages_

## Synthesis (1)
- [[resources/interpretability-overview|Interpretability Overview]] — current thesis on mechanistic interpretability in LLMs _(1 source - updated 2026-04-10)_

```

### Log (`_ref/log.md`)
Append-only chronological record of activity. Every research, ingest, query, lint and note modified gets an entry. Do not delete or modify any existing content. Format:
```
## [YYYY-MM-DD] <ops> | <title>
- Short summary line (sources, notes modified, summary)
```
Valid ops: `research`, `ingest`, `query`, `lint`, `create`, `update`, `delete`, `note`, `classify`, `archive`.

The log is parseable with grep: `grep "^## \[" _ref/log.md | tail -10` gives the last 10 entries