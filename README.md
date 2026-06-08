# YENOO - Yet Another Brain Skill

_Schizophrenia not included_.

1.000.000nth implementation of Andrej Karpathy's [LLM Wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) with a twist: it adds the [PARA Method](https://fortelabs.com/blog/para/) by Tiago Forte and works through [Obsidian](https://obsidian.md/).

## How to Use It

Better not use it.

If you do not desist, then copy the skill folder `skills\yenoo` to your project/profile or use the following command to wire yout AI agent into it, and follow the workflows below.
```
npx skills add https://github.com/raohmaru/yenoo
```

## Core Workflows

* **Setup Brain**
  Run once to setup the directory structure: `/yenoo setup`
* **Daily Note**
  Each morning, open terminal in vault and type `/yenoo daily`
* **Research and Capture**
  Research a topic, synthesize findings and save the note. Usage:
  * `/yenoo research pathfinding A* algorithm and save to my vault`
* **Query**
  Find information in the vault using `/yenoo query`:
  * "Find everything I have on small language models and create a map of content"
  * "Read my note from the team meeting on 2026-06-07 and extract all action items assigned to me. Create tasks in projects/current-sprint/tasks.md"
* **Ingest**
  Incorporate new material into the knowledge base.  
  Usage: `/yenoo ingest raw/file.md`
* **Projects and Areas**
  Ask to add a new actionable project or area, or to update them: `/yenoo new`
* **Weekly Review**
  Run every Friday: `/yenoo weekly-review`
* **Monthly Review**
  Run every end of month: `/yenoo monthly-review`
* **Lint**
  Run the health-check workflow and reports findings: `/yenoo lint`

## Brain Structure
```
└── vault/
    ├── _attachments/     ← media assets attached to notes
    ├── _inbox/           ← quick capture, classify during weekly review
    ├── _raw/             ← unprocessed capture from the user
    ├── archives/         ← done or inactive
    ├── areas/            ← ongoing responsibilities
    ├── daily/            ← daily notes
    ├── projects/         ← active projects/efforts
    ├── resources/        ← interests and reference
    ├── index.md          ← master index
    ├── log.md            ← chronological activity log
    └── tags.md           ← registered tags
```

## Recommended Skills

| Skill |   |
| ----- | - |
| [**graph-colorize**](https://www.skills.sh/ar9av/obsidian-wiki/graph-colorize) | Say "color my graph" to color-coding the Obsidian graph |
| [**obsidian-skills**](https://github.com/kepano/obsidian-skills) | Agent Skills for use with Obsidian |

## References
+ [Claude Code + Obsidian: Build a Second Brain That Actually Thinks ](https://dev.to/mibii/claude-code-obsidian-build-a-second-brain-that-actually-thinks-d61)
+ [Obsidian Wiki](https://github.com/Ar9av/obsidian-wiki)
+ [claude-skills/llm-wiki](https://github.com/alirezarezvani/claude-skills/tree/main/engineering/llm-wiki/skills/llm-wiki)
+ [LLM Wiki v2](https://gist.github.com/kanmadigital/2369c4f5ea410cb8f6a1647b40c0e2a1)

## License
MIT