---
name: query
description: Use when the user asks a question about the knowledge base (researched topics).
---

# Query Workflow

When asked about a topic:

1. **Search the vault**
    - Read `index.md` and run a semantic search against it and locate relevant notes in the `archives/`, `areas/`, `projects/` and `resources/` folders folder.
    - If no relevant notes found, broaden the search: `grep -ri "topic" archives/ areas/ projects/ resources/`
    - Read the most relevant resource notes and their connected pages

2. **Fall back to raw sources** — only check `_raw/` if the existing notes lack sufficient detail

3. **Evaluate relevance**
   - For each candidate note, assess semantic match to the question
   - Keep only notes where key concepts from the question appear in the content
   - If no notes have substantively relevant content, say: "I couldn't find relevant information in the knowledge base for this question."

4. **Answer the question**
    - Use natural language; cite every claim with a `[[wikilink]]` to its source note
    - If uncertain, say so clearly — do not invent content not in the vault
    - Suggest a new source to ingest or research if the vault has a gap
    - Add a confidence indicator to the answer:
      - **High confidence** — Multiple relevant chunks directly address the question.
      - **Medium confidence** — Some relevant context found but answer required inference.
      - **Low confidence** — Sparse or tangentially relevant context. User should verify.   

5. **File back answers worth keeping**
    - If the answer reveals a new insight worth preserving, ask the user whether to create a resource note or update an existing note
    - If yes, follow the conventions in SCHEMA.md (frontmatter, wikilinks, templates)

6. **If the answer revealed a gap**, ask the user if they want to run the `/research` skill to research the topic further

7. **Add to log**
    Append a `query` entry to `log.md`:
    ```
    ## [YYYY-MM-DD] query | Topic asked
    - Short summary of what was asked and answered
    ```

## Conventions

- Prefer reading 2–5 good notes over sweeping the entire vault
- Minimum 2 outbound `[[wikilinks]]` per page when creating or updating notes
- Validate frontmatter exists and is well-formed on creation or update
- When updating a note, always bump the `updated` date to today

## Anti-patterns

- Read every note in `resources/` on every query → use the index
- Answer without citations → every claim must link to a note
- Create a new note for a one-off trivial question → only file back answers worth keeping
- Invent content not in the vault → if you don't know, say so and suggest a new source to ingest
- Skip the log entry when answering a query
- **Do not hallucinate.** If the retrieved context does not contain enough information to fully answer the question, say what you can answer and explicitly state what is missing.
