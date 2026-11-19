# Machine A Workflow

## Objective

Finish as much of the product as can be responsibly implemented and verified within 4 GB RAM and the available disk. Do not stop at prototypes if the machine can implement the actual code. Do not claim platform verification it cannot provide.

## Required sequence

1. Inspect all app inputs and existing repository files.
2. Produce product brief, requirements, screen inventory, flows, architecture, data model, risks and roadmap.
3. Resolve blocking product questions or clearly record assumptions.
4. Create project structure and build configurations.
5. Implement vertical slices: UI + state + repository/API + tests for one feature at a time.
6. Implement backend and database code, migrations, security rules and tests where applicable.
7. Add CI workflows for host-side test/build verification.
8. Run formatting, analysis, unit tests, widget tests and backend tests that fit the machine.
9. Review errors and fix them; do not suppress warnings merely to show a clean report.
10. Update implementation status, test evidence, dependency inventory and open issues.
11. Run the Machine A exit checklist and prepare a clean Git handoff.

## What “complete on Machine A” means

- All feasible source code has been written, not just UI mockups.
- Interfaces/contracts/configuration have been implemented or explicitly blocked by credentials/provider approval.
- Tests possible without native toolchains have run.
- Static checks and test reports are recorded.
- Platform-specific work requiring Machine B is listed by task, reason, and exact verification command.
- No secrets or local build caches are committed.

## Avoid

- Claiming “no bugs”.
- Generating fake API/provider success.
- Skipping tests because UI looks correct.
- Large one-shot refactors.
- Running Android Gradle builds on Machine A by default.
