# Store Requirements Matrix

Read the universal ForgeFlow guide `07_RELEASE_AND_COMPLIANCE/POLICY_IMPLEMENTATION_PHASE_MAP.md` and `POLICY_APPLICABILITY_ASSESSMENT.md`. Research current official policy for this app's specific category, features, target countries, audience, monetization, permissions and SDKs. Record the date checked and official source URLs.

Use these statuses: `APPLIES`, `NOT APPLICABLE` (with reason), `NEEDS RESEARCH`, `BLOCKED`, `VERIFIED` (with test/submission evidence). Do not treat unknown as not applicable.

| Requirement / policy | Store | Applies? | Reason | Feature/design requirement | Implementation phase | Test evidence | Submission evidence | Status |
|---|---|---|---|---|---|---|---|---|
| Privacy policy and data inventory | Both | UNKNOWN | | | Discovery + implementation + release | | | |
| Account creation and deletion | Both where account creation exists | UNKNOWN | | | Architecture + feature implementation | | | |
| Apple login service parity / Sign in with Apple | Apple, when third-party primary login is used and no exception applies | UNKNOWN | | | Auth architecture + feature implementation | | | |
| App Privacy / Data Safety declarations | Apple / Google respectively | UNKNOWN | | | Inventory early; declare near release | | | |
| UGC terms, report, block, moderation | Both when UGC exists | UNKNOWN | | | Design early + implement with UGC | | | |
| Age rating / target audience / child safety | Both | UNKNOWN | | | Discovery + release | | | |
| Permission purpose, consent and alternatives | Both as relevant | UNKNOWN | | | Architecture + feature implementation + device QA | | | |
| Ads / tracking / ATT / ad declarations | Both as relevant | UNKNOWN | | | SDK selection + feature implementation + release | | | |
| Digital payments / physical goods and services | Both, transaction-dependent | UNKNOWN | | | Business model + architecture + payment implementation | | | |
| SDK privacy manifests / required-reason APIs | Apple, when applicable | UNKNOWN | | | Dependency selection + iOS build audit | | | |
| Android target API / high-risk permissions | Google Play, as applicable | UNKNOWN | | | Machine B + release | | | |
| Reviewer access / demo mode / live backend | Both as applicable | UNKNOWN | | | Feature design + release preparation | | | |
| IP, licenses, app originality and store listing | Both | UNKNOWN | | | Discovery + release | | | |

## Timing rule

- **Discovery/architecture:** identify applicable rules and design the data model, permissions, login, deletion, UGC, payment and SDK architecture.
- **Feature development:** implement the required in-app controls and backend processes with the feature.
- **Machine A:** run local/static checks and document blocked native/provider checks.
- **Machine B:** complete native plugin, real OAuth, real permission, real billing, emulator/device, signing and binary checks.
- **Release:** complete store forms, privacy labels, content/age ratings, metadata, reviewer access, build requirements and final policy recheck.

Do not mark `NOT APPLICABLE` without a written reason.
