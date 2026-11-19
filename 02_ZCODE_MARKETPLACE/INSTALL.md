# Install ForgeFlow Skills in the project 

## Recommended: add the local marketplace

1. Open any workspace in ZCode (a project workspace is fine).
2. Open **Settings → Plugins**.
3. Choose **Create → Add marketplace**.
4. Select the local folder `02_ZCODE_MARKETPLACE/` from this kit (the folder containing `marketplace.json`).
5. Find `forgeflow-universal-workflow` in the Personal marketplace list.
6. Inspect the plugin contents and install/enable it.
7. Open **Settings → Skills** and confirm the skills appear and are enabled. Refresh if needed.
8. Open **Settings → Subagents** and confirm the ForgeFlow specialists are available.
9. Type `/` to find ForgeFlow commands; type `$` to invoke skills.

Official ZCode docs: https://zcode.z.ai/en/docs/plugin and https://zcode.z.ai/en/docs/skill

## Alternative: import selected skills only

Copy a skill directory from `forgeflow-plugin/skills/<skill-name>/` into:

`%USERPROFILE%\.zcode\skills\<skill-name>\SKILL.md`

Then open ZCode Settings → Skills, refresh, and enable it.

## Suggested enabled skills

Enable the small core set:
- `product-discovery-and-requirements`
- `architecture-and-planning`
- `flutter-and-cross-platform-engineering` (when relevant)
- `backend-database-security`
- `quality-and-machine-handoff`
- `store-readiness-research`

Disable skills not relevant to the current app to reduce context clutter. The skills are reusable; the project-specific requirements still belong in that app's repository.

## Security

This plugin contains Markdown/JSON only. It intentionally has no hooks or MCP servers. Still inspect plugin files before enabling any plugin source. Do not add secrets to plugin configuration or Markdown files.
