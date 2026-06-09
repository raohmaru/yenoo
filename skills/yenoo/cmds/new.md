---
name: new
description: Create a new project or area following the PARA framework.
---

# New Project/Area Workflow

1. Determine the type using the classification decision tree from `ref/PARA.md`:
   - **Has a clear deadline or end state?** → `project`
   - **Ongoing responsibility with no end date?** → `area`
   - **Uncertain?** → ask the user. If still unclear, suggest `_inbox/` instead
2. Collect the required details from the user:
   - **Title** — human-readable name (slugified to lowercase-hyphens for the filename)
   - **Category** — an actionable grouping folder:
     - For projects: the parent area the project falls under (e.g., `phd-research`, `personal-finance`)
     - For areas: a domain label (e.g., `health`, `career`, `finance`)
   - **Tags** — must be registered in `tags.md` (per SCHEMA.md). Ask user for tags, verify they exist in `tags.md`, and register new ones if needed.
   - **For projects:** deadline, expected outcome
   - **For areas:** the standard to maintain, any current goals
3. Ensure the category folder exists:
   - Projects: `vault/projects/<category>/`
   - Areas: `vault/areas/<category>/`
4. Create the note from the appropriate template at `ref/templates/`:
   - Project: `ref/templates/project.md`
   - Area: `ref/templates/area.md`
   - If the template is missing, ask the user before creating without one.
5. Populate the template:
   - Fill YAML frontmatter as per `ref/SCHEMA.md`
   - For projects: fill in Deadline, Expected Outcome, Related Area sections
   - For areas: fill in Focus, Goals sections
   - Add the file path as an `# Area` or `# Title` heading matching the title
   - Add minimum 2 outbound `[[wikilinks]]` to related notes (per SCHEMA.md)
     - Do not link to `index.md`, `log.md` or `tags.md`
6. Save the file at:
   - Projects: `vault/projects/<category>/<slugified-name>.md`
   - Areas: `vault/areas/<category>/<slugified-name>.md`
7. Update `index.md`:
   - Add a new entry under the correct category heading with a one-line summary
8. Update `log.md`:
   - Insert a `create` entry with the note title and type

## Conventions

- Follow `ref/SCHEMA.md` for all frontmatter and formatting rules
- Use the PARA decision tree from `ref/PARA.md` to distinguish projects from areas
- File names: lowercase, hyphens, no spaces (per SCHEMA.md)
- Deep nesting: maximum 2 directory levels (`areas/business/invoicing.md` good, deeper bad — per SKILL.md)
- Always ask the user before creating wikilinks to nonexistent notes (per AGENTS.md)

