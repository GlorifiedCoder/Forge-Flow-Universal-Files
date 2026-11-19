# ZCode Task — Machine A Completion Gate

Prepare the project for Machine B. Use `04_MACHINE_A/MACHINE_A_EXIT_CHECKLIST.md` from the universal kit.

- Inspect Git status and all uncommitted/untracked files.
- Run all applicable local formatting, static analysis, unit, widget and backend tests that fit Machine A.
- Produce a truthful report with exact commands, versions and results.
- List every test not run and explain what dependency or environment is missing.
- Identify all native plugin/build requirements by inspecting manifests and official plugin docs.
- Record required Flutter, JDK, Gradle, Android Gradle Plugin, Kotlin, SDK, NDK and CMake versions where discoverable; mark unknown rather than guess.
- Prepare Machine B setup tasks and OpenCode audit handoff.
- Confirm no secrets, `.env` values, signing keys, caches, build output or generated binaries are committed.
- Commit verified changes and report the exact commit SHA.

Do not say “bug-free” or “fully tested” based on Machine A checks alone. Status should be `READY_FOR_MACHINE_B` only when the handoff is reproducible.
