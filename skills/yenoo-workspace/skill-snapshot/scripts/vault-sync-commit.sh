#!/usr/bin/env bash
set -euo pipefail

exec > >(tee -a "sync.log") 2>&1

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Not inside a git repository."
  exit 1
fi

if [ -n "$(git status --porcelain)" ]; then
  git add -A
  git commit -m "sync $(date '+%Y-%m-%d %H:%M')"
else
  echo "No changes to commit."
fi

if git remote get-url origin >/dev/null 2>&1; then
  git push
fi