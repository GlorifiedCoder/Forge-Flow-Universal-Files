# Release and Store Compliance

Store compliance is planned from the beginning and verified near release. Do not leave privacy, permissions, data deletion, age suitability, content moderation, or login compliance until the final week.

## Timing

### Discovery and architecture
- Identify target stores, countries, audience/age range, business model, account model, data collected, SDKs, permissions, user-generated content, sensitive content, payments and external integrations.
- Decide whether login is actually required for core use. Minimize mandatory sign-in.
- Design in-app account deletion if users can create accounts; determine web deletion request path and backend cascading deletion behavior.
- Define privacy notice, consent, retention and support/contact requirements.
- Determine whether UGC/content moderation, reporting, blocking, age gates or child-safety controls apply.

### During feature implementation
- Build the required privacy settings/notice and permission explanations.
- Implement account deletion and external web deletion flow when required.
- Implement report/block/moderation/appeal/escalation features if users can contribute content or interact.
- Build least-privilege permissions and just-in-time permission prompts.
- Add support/contact and terms/community standards as applicable.
- Keep data inventory aligned with actual SDKs and backend behavior.

### Machine B and pre-submission
- Verify real provider flows, account deletion, permissions, network security, app completeness, reviewer access, demo account/demo mode, and all external links.
- Complete Play Console Data Safety and App Store Connect App Privacy responses from actual behavior and SDK inventory.
- Check store target API, SDK, privacy manifest, signing, screenshots, age/content rating, listing metadata, export/compliance questions and region-specific requirements.
- Revisit the live official policies immediately before submission.

## Important

This is a planning framework, not legal advice and not a guarantee of approval. App review can depend on the exact app category, content, audience, country, payment model, SDKs, and current policy language.


## Detailed planning and evidence files

- `POLICY_IMPLEMENTATION_PHASE_MAP.md` — what to plan/implement in discovery, architecture, feature development, Machine A, Machine B, submission, and maintenance.
- `POLICY_APPLICABILITY_ASSESSMENT.md` — per-app intake questionnaire; identify only policies that apply.
- `CONDITIONAL_POLICY_FEATURE_MATRIX.md` — feature-triggered requirements such as accounts, UGC, permissions, ads, AI, payments, and children.
- `POLICY_RESEARCH_SNAPSHOT_2026-11-20.md` — current official policy snapshot and source links; recheck before release.
- `REVIEWER_ACCESS_AND_SUBMISSION_PACKET.md` — demo access, forms, metadata, and release packet.
- Project templates: `docs/06_SECURITY_PRIVACY/STORE_COMPLIANCE_IMPLEMENTATION_PLAN.md` and `docs/07_RELEASE/STORE_SUBMISSION_EVIDENCE.md`.
