# Machine A Exit Checklist

Do not hand off until every line has a status and evidence or a reason it is blocked.

## Product and planning
- [ ] Inputs/screenshots reviewed and referenced in project docs.
- [ ] Product brief, goals, non-goals, target users and constraints complete.
- [ ] Screen inventory and user journeys complete.
- [ ] Acceptance criteria defined for implemented features.
- [ ] Architecture and key decisions documented.
- [ ] Privacy data inventory and release risk assessment created.

## Code and data
- [ ] All feasible frontend modules implemented.
- [ ] Backend implemented where required, including error/validation paths.
- [ ] Database migrations/schema and access policies written.
- [ ] Secrets are placeholders only; `.env.example` exists.
- [ ] Dependencies pinned/locked as appropriate.
- [ ] Accessibility, localization and empty/loading/error states considered.

## Quality
- [ ] Formatters run and results recorded.
- [ ] Static analysis/lint run and results recorded.
- [ ] Unit tests run and results recorded.
- [ ] UI/widget tests run where possible.
- [ ] Backend tests run where possible.
- [ ] Security review performed at source/config level.
- [ ] Known issues and untested scenarios documented.
- [ ] No false claim of a successful build or live provider integration.

## Repository handoff
- [ ] Git status reviewed; no untracked user work omitted.
- [ ] Changes committed; commit hash recorded.
- [ ] Build instructions and environment variable names documented.
- [ ] Machine B task list prepared.
- [ ] OpenCode audit prompt prepared.
- [ ] No secrets, signing keys, SDKs, caches or build outputs committed.

Completion status: `READY_FOR_MACHINE_B` only when the remaining platform-specific items are explicitly listed.
