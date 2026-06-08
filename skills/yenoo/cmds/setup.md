---
name: setup
description: Setup the folders and files of the vault
---

# Vault Setup

Dismiss the PARA rule "Never Create Empty Folders" — in the setup it is allowed to create empty folders.

**Never overwrite existing files**. This is a no-op if `vault/` is already initialised.

- Create the vault folder structure:
  ```bash
  mkdir vault
  (cd vault && mkdir _attachments _inbox _raw daily archives areas projects resources)
  ```
- Create the index, log and tags files:
  ```bash
  echo -e "# Index\r\r_Updated YYYY-MM-DD • N pages_" > vault/index.md
  echo -e '# Log\r\r> Insert-only timeline. Grep recent: `grep "^## \[" log.md | tail -10`' > vault/log.md
  echo -e '# Registered Tags\r\r- daily\r- weekly\r- monthly' > vault/tags.md
  ```