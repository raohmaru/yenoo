# YEPARA - Another Brain

_Schizophrenia not included_.

1.000.000nth implementation of Andrej Karpathy's [LLM Wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) with a twist: it adds the [PARA Method](https://fortelabs.com/blog/para/) by Tiago Forte.

## How to Use It

Better not use it.

If you do not desist, then clone the repository, wire yout AI agent into it and follow the workflows below.

## Core Workflows

* **Daily Note**
  Each morning, open terminal in vault and type `/daily`
* **Research and Capture**
   Research a topic, synthesize findings and save the note. Usage:
  * `/research pathfinding A* algorithm and save to my vault`
* **Query**
  Find information in the vault using `/query`:
  * "Find everything I have on small language models and create a map of content"
  * "Read my note from the team meeting on 2026-06-07 and extract all action items assigned to me. Create tasks in projects/current-sprint/tasks.md"
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
  Run the health-check workflow and reports findings: `/lint`

## Add Projects to the Vault
You can run the second brain inside a code project that's separate from your Obsidian vault, and still give it access to vault context.

Use a symlink in your vault to pull project docs in:
```bash
cd ~/second-brain
ln -s ~/projects/my-app/docs project-docs
```

## Color-Coding the Graph
Say **"color my graph"**, **"color code by tag"**, **"color by category"**, or **"highlight visibility in graph"** and the `graph-colorize` skill rewrites `<vault>/.obsidian/graph.json` so Obsidian tints nodes by tag, folder, or visibility. It scans your actual vocabulary, picks a colorblind-friendly palette, backs up the existing `graph.json` first, and only touches the `colorGroups` field — your zoom, physics, and filter preferences stay intact. Reload Obsidian (Cmd/Ctrl+R) to see the change.

Modes: `by-tag` (default — top 10 tags), `by-category` (the seven vault folders), `by-visibility` (highlight `visibility/pii` and `visibility/internal`), `combined` (visibility + tags), or `custom` (user-supplied mapping).

## References
+ [Claude Code + Obsidian: Build a Second Brain That Actually Thinks ](https://dev.to/mibii/claude-code-obsidian-build-a-second-brain-that-actually-thinks-d61)
+ [Obsidian Wiki](https://github.com/Ar9av/obsidian-wiki)
+ [claude-skills/llm-wiki](https://github.com/alirezarezvani/claude-skills/tree/main/engineering/llm-wiki/skills/llm-wiki)
+ [LLM Wiki v2](https://gist.github.com/kanmadigital/2369c4f5ea410cb8f6a1647b40c0e2a1)

## License
MIT