# Testing and Evidence Policy

## Never promise “no bugs”

The objective is to reduce defects through layered testing, not claim zero defects. Passing tests only cover the scenarios actually exercised.

## Required layers

1. Static checks: formatters, linters, type analysis, dependency/configuration checks.
2. Unit tests: business rules, validators, calculations, state transitions, repositories with fakes.
3. Widget/UI tests: layout states, input validation, navigation, accessibility semantics.
4. Backend tests: request validation, authorization, error paths, database behavior, integration contracts.
5. Contract tests: API schema, serialization, generated client compatibility where applicable.
6. Integration tests: authentication provider, database, storage, push, payments, maps, or other services using test credentials/environments.
7. Native tests: Android/iOS plugin registration, build configuration, permissions, lifecycle, deep links, signing.
8. Device tests: actual app installation and real-device behavior, including low-memory/network/offline/rotation/background/resume where relevant.
9. Release checks: clean release build, signing, versioning, store metadata, privacy declarations, reviewer access.

## Evidence format

Record each check in `docs/08_STATUS/TEST_EVIDENCE.md`:

| Date | Machine | Commit | Command / scenario | Result | Evidence path | Notes |
|---|---|---|---|---|---|---|

Never call something verified when it was only inspected or reasoned about. Distinguish mocked provider tests from real provider tests.

## Defect management

For each defect record severity, reproduction steps, expected behavior, actual behavior, logs/screenshots, suspected area, fix commit, and retest evidence.
