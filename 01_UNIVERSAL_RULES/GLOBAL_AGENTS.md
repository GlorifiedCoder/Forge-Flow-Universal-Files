# Global ForgeFlow Rules for ZCode

These are reusable rules for all app projects. They do not define any app's product requirements.

## Product-first workflow

- Treat the project's `00_SOURCE_INPUTS/` as source material. Inspect every relevant file and screenshot before planning.
- Preserve the user's terminology, constraints, feature priorities, and design references.
- Do not silently invent requirements, business rules, user roles, integrations, or pricing.
- Separate facts from assumptions and recommendations. Mark unresolved items `UNKNOWN` or `NEEDS_DECISION`.
- Convert source inputs into an app-specific product brief, feature requirements, screen inventory, flows, architecture, data model, roadmap, and acceptance criteria before large-scale implementation.
- Do not start the entire application in one uncontrolled operation. Work in small, verifiable phases.

## Engineering

- Inspect the existing repository and Git status before changing files.
- Respect existing stack decisions unless the user explicitly asks for an evaluation or change.
- Prefer simple maintainable architecture over unnecessary microservices, abstraction, or dependencies.
- Separate presentation, application/business logic, data access, integrations, and configuration.
- Pin dependencies and commit lockfiles when supported by the chosen stack.
- Use environment examples with placeholders; never create fake real credentials.
- Add tests alongside features. Do not postpone all testing to the end.
- Do not claim a test, build, integration, or deployment succeeded unless it was actually run and evidence is recorded.
- Never describe software as bug-free. Report residual risks and untested paths.

## Security and data

- Treat all input as untrusted; validate on the server.
- Enforce authorization server-side and at the data layer where possible.
- Apply least privilege and data minimization.
- Never expose server secrets, signing keys, private OAuth keys, database admin credentials, or privileged API keys in client code or Git.
- Define retention and deletion behavior for personal data before schema implementation.
- Use secure transport, appropriate session handling, safe logging, and dependency review.

## Machine A boundaries

The current Machine A profile is Windows, 4 GB RAM, and approximately 10 GB free storage. ZCode is already installed.

- Do not instruct the user to install ZCode.
- Use Git, Flutter/Dart, and Python as needed.
- Do not install Android Studio, Android SDK/NDK, emulator, Docker, or local PostgreSQL on Machine A unless the user explicitly changes the hardware strategy.
- Do as much code writing, static checking, unit testing, widget testing, backend testing, mock testing, and CI setup as resources permit.
- Avoid large downloads, unnecessary caches, emulator images, native builds, and heavy containers.
- Clearly record what is actually verified on Machine A and what remains for Machine B.

## Machine B boundary

Machine B is the full build/test environment. Install toolchain versions based on the project's actual manifests and native plugin requirements, not guesses. Review the project independently before building. Run Android emulator and physical-device tests; use a Mac with Xcode for iOS build/signing/testing.

## Git safety

- Never run destructive history operations or delete user work without explicit approval.
- Do not use `git reset --hard`, `git clean -fd`, force-push, or history rewrite as routine cleanup.
- Keep `.env`, local secrets, build outputs, caches, IDE state, and signing files out of Git.
- Make small understandable commits after verified milestones.

## Completion reporting

For every phase, report: changed files, implemented behavior, commands run, test results, evidence, failures, blocked items, assumptions, and next phase. Use only these statuses: `PASS`, `FAIL`, `BLOCKED`, `NOT RUN`, `WAIVED`.
