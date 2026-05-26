# Second Brain Instructions

## Core Workflows
* **Daily Note**
  Each morning, open terminal in vault and type `/daily`
* **Research and Capture**
  Usage:
  * "Research Raft consensus algorithm and save to my vault"
  * "Find everything I have on distributed systems and create a map of content"
  * "Read my note from the team meeting on 2026-04-08 and extract all action items assigned to me. Create tasks in projects/current-sprint/tasks.md"
* **Ingest**
  Incorporate new material into the knowledge base.  
  Usage: `/ingest _raw/file.md`
* **Projects and areas**  
  Ask to add a new actionable project or area, or to update them.
* **Weekly Review**
  Run every Friday: `/weekly-review`
* **Monthly Review**
  Run every end of month: `/monthly-review`
* **Lint**
  Run the health-check workflow and reports findings.  
  Usage: `/lint`.

## Add Projects to the Vault
You can run the second brain inside a code project that's separate from your Obsidian vault, and still give it access to vault context.

Use a symlink in your vault to pull project docs in:
```bash
cd ~/second-brain
ln -s ~/projects/my-app/docs project-docs
```
Now the agent sees both your code and your vault notes in the same session.

## Color-coding the graph
Say **"color my graph"**, **"color code by tag"**, **"color by category"**, or **"highlight visibility in graph"** and the `graph-colorize` skill rewrites `<vault>/.obsidian/graph.json` so Obsidian tints nodes by tag, folder, or visibility. It scans your actual vocabulary, picks a colorblind-friendly palette, backs up the existing `graph.json` first, and only touches the `colorGroups` field — your zoom, physics, and filter preferences stay intact. Reload Obsidian (Cmd/Ctrl+R) to see the change.

Modes: `by-tag` (default — top 10 tags), `by-category` (the seven vault folders), `by-visibility` (highlight `visibility/pii` and `visibility/internal`), `combined` (visibility + tags), or `custom` (user-supplied mapping).

## References
+ https://dev.to/mibii/claude-code-obsidian-build-a-second-brain-that-actually-thinks-d61
+ https://github.com/Ar9av/obsidian-wiki
+ https://github.com/alirezarezvani/claude-skills/tree/main/engineering/llm-wiki/skills/llm-wiki