# YENOO skill evaluations

`evals.json` contains realistic prompts, expected outcomes, and objective
assertions for comparing YENOO runs with a previous skill version.

## Run the evaluation loop

1. Snapshot `skills/yenoo/` before changing the skill.
2. Run every prompt once with the current skill and once with the snapshot.
3. Save each run under a sibling workspace:
   `skills/yenoo-workspace/iteration-1/<eval-name>/{with_skill,old_skill}/`.
4. Add `timing.json` and `grading.json` to each run.
5. Aggregate results:

```bash
python .agents/skills/skill-creator/scripts/aggregate_benchmark.py \
  skills/yenoo-workspace/iteration-1 \
  --skill-name yenoo
```

6. Generate the human review page with
   `.agents/skills/skill-creator/eval-viewer/generate_review.py`, passing the
   iteration directory and generated `benchmark.json`.

The fixture vaults are intentionally small. The ingest fixture includes a
prompt-injection string; it must be treated as source content, never as an
instruction.
