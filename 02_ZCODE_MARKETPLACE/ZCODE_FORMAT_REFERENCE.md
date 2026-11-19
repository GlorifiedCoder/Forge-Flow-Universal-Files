# ZCode Format Reference

The included marketplace is built from ZCode's documented plugin conventions. Verify the current docs when ZCode updates its plugin format.

- Plugins: https://zcode.z.ai/en/docs/plugin
- Skills: https://zcode.z.ai/en/docs/skill
- Agent instructions: https://zcode.z.ai/en/docs/agents
- Commands: https://zcode.z.ai/en/docs/commands

Documented locations used here:
- Marketplace root: `marketplace.json`
- Plugin manifest: `.zcode-plugin/plugin.json`
- Skills: `skills/<skill-name>/SKILL.md`
- Commands: `commands/*.md`
- Subagents: `agents/*.md`

ZCode reads user global `~/.zcode/AGENTS.md` and workspace root `AGENTS.md`. Keep the project root instructions concise and app-specific. The local marketplace in this package contains Markdown/JSON only; no shell hooks or MCP services are included.
