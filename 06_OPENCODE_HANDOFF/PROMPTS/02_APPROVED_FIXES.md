# OpenCode Prompt — Apply Approved Findings

Apply only the findings explicitly approved by the project owner from the audit report.

Rules:
- Preserve the approved architecture and product behavior.
- Work in small, reviewable groups.
- Do not rewrite unrelated code or upgrade dependencies without justification.
- Add regression tests for confirmed defects.
- Run targeted tests after each fix, then relevant full test suites.
- Do not weaken security, remove tests, suppress warnings, or fake provider responses to achieve green checks.
- Keep secrets out of Git.
- Record files changed, findings resolved, tests run, results, remaining risks, and commit hash.
