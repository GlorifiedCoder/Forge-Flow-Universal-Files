---
name: store-readiness-research
description: Use when planning or auditing app privacy, permissions, account deletion, user-generated content, payments, age rating, App Store or Google Play submission.
---


# Store Readiness Research

1. Research current official Apple and Google Play policies at the time of work; record URLs and date checked.
2. Evaluate applicability using the app's actual features, audience, target countries, account model, payments, permissions, SDKs and content.
3. Identify privacy policy, App Privacy/Data Safety, account/data deletion, consent, permissions, UGC reporting/blocking/moderation, age/child safety, payment rules, IP/licensing, reviewer access, target API/SDK, signing and listing needs.
4. Move design-impacting requirements into discovery/architecture. Implement privacy/security/account deletion/UGC controls during feature development. Reserve final store forms, listing assets, signing, reviewer access and final audits for release preparation.
5. Mark each requirement APPLIES, NOT APPLICABLE with reason, NEEDS RESEARCH, BLOCKED or VERIFIED with evidence.
6. Never guarantee approval or treat the checklist as legal advice.


## Timing and engineering integration

Classify store rules during discovery and map them to architecture, feature implementation, Machine A checks, Machine B native/device QA, and final submission. Use `07_RELEASE_AND_COMPLIANCE/POLICY_IMPLEMENTATION_PHASE_MAP.md`, `POLICY_APPLICABILITY_ASSESSMENT.md`, and `CONDITIONAL_POLICY_FEATURE_MATRIX.md`. Do not treat release declarations as a substitute for implementing required product behavior. Verify live official sources and record the date before a release.
