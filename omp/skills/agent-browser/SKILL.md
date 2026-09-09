---
name: agent-browser
description: Drive the real Chromium browser via the agent-browser CLI (open, snapshot, click, fill, read, screenshot). Use ONLY for dynamic pages or genuine browser interaction (forms, login, JS-rendered apps, visual checks). Prefer web_search + read/fetch for static content.
---

# agent-browser (OMP wrapper)

`agent-browser` is installed and is the preferred tool for real browser
automation. The full, version-matched usage guide ships with the CLI itself —
load it before the first browser command in a session:

```bash
agent-browser skills get core        # workflows, snapshot/ref pattern, troubleshooting
agent-browser skills get core --full # + full command reference (only when needed)
```

Specialized guides: `electron`, `slack`, `dogfood` (exploratory QA),
`derive-client`, `vercel-sandbox`, `agentcore`. List with
`agent-browser skills list`.

## Decision rule (binding)

1. **Static content** (docs, articles, READMEs, API responses): use OMP's
   `web_search` / `read` / `fetch`. Never launch a browser for these.
2. **Dynamic / interactive** (JS-rendered apps, login flows, forms, infinite
   scroll, visual verification of own frontend work): use `agent-browser`.
3. Core loop: `open <url>` → `snapshot -i` → act on `@refs` → re-snapshot
   after every page change (refs go stale). Prefer `snapshot -i` (interactive
   only) over full snapshots to save context.
4. `read [url]` (agent-browser) is a docs-friendly fetch with markdown
   preference — a middle ground when OMP's `read` returns poor content.
5. Always `close` the browser when done.
