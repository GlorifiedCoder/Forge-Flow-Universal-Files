# OpenCode Prompt — Independent Read-Only Audit

You are the independent senior engineer reviewing this repository after Machine A development.

First read:
- `AGENTS.md`
- `00_SOURCE_INPUTS/`
- `docs/01_PRODUCT/`
- `docs/03_ARCHITECTURE/`
- `docs/05_QUALITY/`
- `docs/06_SECURITY_PRIVACY/`
- `docs/08_STATUS/MACHINE_B_HANDOFF.md`
- `docs/08_STATUS/TEST_EVIDENCE.md`

Do not edit files or install dependencies yet.

Review:
1. Product requirement coverage and incorrect assumptions.
2. Flutter architecture, state management, lifecycle and navigation.
3. Backend/API authorization and input validation.
4. Database migrations, RLS/access policies, indexes and deletion behavior.
5. Secret exposure and environment configuration.
6. Native plugin compatibility and Android/iOS build configuration.
7. Accessibility, localization, loading/empty/error states.
8. Test quality and missing negative/failure tests.
9. Store compliance and privacy implementation gaps.

Return a prioritized report:
- Critical / High / Medium / Low.
- File and line references.
- Why it matters.
- Reproduction or verification method.
- Recommended smallest safe correction.
- Test required after the correction.

Do not report hypothetical issues as confirmed defects. Separate confirmed defects, risks, missing evidence, and suggestions. Wait for approval before changing code.
