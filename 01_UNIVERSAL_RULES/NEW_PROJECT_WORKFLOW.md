# Universal New Project Workflow

## Before every project

- [ ] Make a fresh copy of the separate ForgeFlow New App Input Pack.
- [ ] Add raw idea, intended users, problem and constraints.
- [ ] Add screenshots/sketches and complete the screen/reference index.
- [ ] Add feature priorities and important user flows.
- [ ] Add roles, business rules, data notes and integrations.
- [ ] Add existing code, API docs, competitor references and research.
- [ ] Extract/copy the input pack's `00_NEW_APP_INPUTS/` into the universal kit root, or pass its path to `New-Project.ps1 -InputsPath`.
- [ ] Create a project workspace from the blank project template.
- [ ] Run the discovery/planning prompt before coding.
- [ ] Review product, UX, architecture, security, privacy and release outputs; approve critical decisions.
- [ ] Build incrementally with tests and evidence.
- [ ] Complete Machine A gate.
- [ ] Run Machine B independent OpenCode audit.
- [ ] Install only the required native tools/plugins and verify exact builds.
- [ ] Run emulator and physical-device tests.
- [ ] Run iOS Mac/Xcode testing if iOS is a target.
- [ ] Complete project-specific store/privacy/legal readiness review.

## Source of truth

Raw files under the project's `00_SOURCE_INPUTS/` preserve the user's original intent and evidence. Approved project documents under `docs/` are the implementation source of truth. When they differ, log a conflict and obtain a clear decision.
