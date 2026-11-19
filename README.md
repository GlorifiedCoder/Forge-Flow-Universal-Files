# ForgeFlow — Universal App Development Files

**A reusable, two-machine system for planning, building, testing, and releasing mobile applications.**

This ZIP contains only reusable development instructions, ZCode skills/commands/agents, project templates, machine workflows, OpenCode handoff prompts, quality rules, release guidance, and helper scripts. It does not include the manual New App Input forms. Those are supplied separately in `ForgeFlow_New_App_Inputs.zip`.

## Use the two ZIPs together

1. Extract `ForgeFlow_Universal_Files.zip` into a permanent folder.
2. Extract `ForgeFlow_New_App_Inputs.zip` into the root of that same folder. You should then see `00_NEW_APP_INPUTS/` beside `01_UNIVERSAL_RULES/`.
3. Fill in the app idea and add screenshots/references to `00_NEW_APP_INPUTS/`.
4. Create a project workspace using `08_SCRIPTS/New-Project.ps1`.
5. Open the generated project in ZCode and follow its discovery/plan prompt.

You may store the input pack elsewhere; pass its `00_NEW_APP_INPUTS` folder to the script using `-InputsPath`.

## The principle

- **Universal once:** machine setup, agent rules, skills, Git rules, test discipline, security baseline, and two-machine handoff.
- **Project-specific each time:** screenshots, idea, users, features, screens, workflows, data, integrations, design language, architecture decisions, and release declarations.
- **Machine A:** write as much source code as practical and run every lightweight/local check the machine can handle.
- **Machine B:** independent code review with OpenCode and your selected model, install the full toolchain, resolve native plugins, build, run emulator/device tests, and complete platform-specific validation.
- **Release:** re-check live Apple and Google policies before submission. No template guarantees approval.

## Folder map

| Folder | Purpose |
|---|---|
| `01_UNIVERSAL_RULES/` | Reusable instructions and policies for all projects |
| `02_ZCODE_MARKETPLACE/` | Local ZCode marketplace with reusable skills, commands and specialist agents |
| `03_PROJECT_TEMPLATE/` | Blank project documentation/workspace template; duplicate for every app |
| `04_MACHINE_A/` | Lightweight coding/testing workflow for the described 4 GB RAM / 10 GB free-space machine |
| `05_MACHINE_B/` | Full native build and real-device testing setup |
| `06_OPENCODE_HANDOFF/` | Independent audit and repair workflow for OpenCode + selected model |
| `07_RELEASE_AND_COMPLIANCE/` | Store-readiness planning and submission checklists |
| `08_SCRIPTS/` | PowerShell helper to create a project copy from the blank template and copy your separate inputs |

## First-time setup (once)

1. Read `04_MACHINE_A/MACHINE_A_SETUP_WINDOWS.md`.
2. Install Git, Flutter SDK, and Python only if your project/backend needs Python. ZCode is assumed to be already installed.
3. Follow `02_ZCODE_MARKETPLACE/INSTALL.md` to install the reusable ForgeFlow plugin.
4. Keep this universal kit as a clean master. Do not put app-specific requirements into universal rules.

## Every new app

1. Start with a fresh copy of the separate New App Input Pack.
2. Fill only what you know; use `UNKNOWN` for unanswered questions.
3. Add screenshots and documents to its asset folders.
4. Extract/copy `00_NEW_APP_INPUTS/` to the universal kit root, or pass its path to the project script.
5. Run `08_SCRIPTS/New-Project.ps1 -Name "YourAppName"`.
6. Open the generated app workspace in ZCode and run `prompts/00_DISCOVER_AND_PLAN.md`.
7. Review product requirements, screen specs, architecture, risks, release obligations and phased roadmap before coding.
8. Implement in small phases; complete the Machine A gate.
9. On Machine B, run the independent OpenCode audit, install only the required native tools/plugins, build, and test on emulator and physical device.
10. Complete iOS builds on macOS/Xcode when iOS is a target.

## Important truths

- Passing static analysis and automated tests does not prove an app has no bugs.
- Machine A cannot reliably validate every native plugin, release signing, store billing, push notifications, camera/location permissions, or real OAuth callbacks without the appropriate platform environment and provider credentials.
- Windows can develop Flutter source for iOS, but iOS compilation, signing, Simulator testing and App Store submission require macOS with Xcode.
- Docker is optional. Install it only if the chosen architecture or local services genuinely require containers.
- Never commit real API secrets, OAuth client secrets, signing keys, service-role keys or Apple private keys.


## Store compliance workflow

Use `07_RELEASE_AND_COMPLIANCE/POLICY_IMPLEMENTATION_PHASE_MAP.md` and the policy applicability assessment. Architecture-sensitive items (data minimization, account deletion, login parity, permissions strategy, UGC moderation and payment classification) are planned early. Feature safeguards are implemented with the related feature. Store declarations, metadata and reviewer access are finalized near release, then verified on real platform builds. The current policy snapshot is dated 2026-11-20 and must be rechecked before submission.
