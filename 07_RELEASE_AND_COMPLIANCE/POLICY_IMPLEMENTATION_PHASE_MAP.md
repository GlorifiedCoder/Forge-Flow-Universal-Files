# Store Policy Implementation Phase Map

**Purpose:** Make App Store / Google Play compliance part of product engineering from the beginning, rather than a collection of last-minute submission forms.

**Policy snapshot checked:** 2026-11-20. Re-check official sources at project discovery, before Machine B release testing, and immediately before each store submission. Store policies, SDK requirements, country exceptions, and account-specific requirements change.

> This is engineering guidance, not legal advice or an approval guarantee. Applicability depends on the app's actual features, data practices, audience, business model, countries, and third-party SDKs.

## The key rule

**Implement architecture-sensitive requirements early; implement feature-specific safeguards alongside the feature; complete store declarations and listing metadata during release preparation; verify everything on real platform builds before submission.** Do not wait until final testing to discover that the database cannot delete a user's account data, that a UGC feature has no moderation pathway, or that the selected payment flow violates store billing rules.

## Phase 0 — Product discovery and policy classification (before architecture)

For every new app, complete `POLICY_APPLICABILITY_ASSESSMENT.md` and the project `STORE_REQUIREMENTS_MATRIX.md`.

Decide and document:

- Target stores: Google Play, Apple App Store, other distribution channels.
- Countries/regions of distribution and applicable legal regimes; identify any regulated category.
- Intended age group. Do not select children as a target audience merely to increase reach.
- Whether accounts are needed for core functionality; sign-in providers and account-linking behavior.
- All user data: collected, generated, inferred, viewed, stored, transmitted, shared, and deleted.
- Every SDK, Flutter plugin, native dependency, backend processor, analytics/ads provider, and AI provider.
- Every permission and platform capability: location, photos, camera, microphone, contacts, notifications, Bluetooth, background activity, etc.
- Whether users can create, upload, review, list, message, comment, share, or otherwise contribute content visible to others (UGC).
- Whether the app includes ads, digital purchases, subscriptions, physical goods/services, commissions, paid listings, or other monetization.
- Whether user data is sent to third-party AI models or external services.
- Content rights: images, maps, property listings, video, music, text, trademarks, datasets, and other licensed material.

**Gate:** No architecture approval until account, data, UGC, payment, permissions, audience, and SDK assumptions are recorded. Unknowns may remain `UNKNOWN`, but must have an owner and resolution phase.

## Phase 1 — Architecture and foundation (implement early)

These requirements affect the data model, auth architecture, APIs, and navigation; they should not be postponed to final testing.

- **Privacy/data inventory:** maintain a field-level data inventory, purpose, lawful/consent basis as relevant, storage location, processor/recipient, retention, and deletion behavior.
- **Data minimization:** collect only what the product needs. Avoid making login mandatory when core functionality can reasonably work without it.
- **Account deletion architecture:** design an end-to-end deletion workflow that covers auth identity, profile rows, owned records, files, derived records, external provider tokens, and documented legal-retention exceptions. Build both the in-app path and required external web request path where applicable.
- **Authorization:** server-side authorization, user/resource ownership, least privilege, RLS where used, secret management, and secure session/token handling.
- **Permission architecture:** request permissions only when a feature needs them; make denial survivable and provide alternatives where reasonable.
- **Login:** assess Apple Guideline 4.8 when third-party/social login is used for the primary account. If Google sign-in is offered on iOS, implement Sign in with Apple unless a documented exception applies.
- **SDK governance:** establish an allowlist/inventory and review process before adding plugins or analytics/ads SDKs.
- **Payments:** decide whether an item is digital functionality/content or a real-world physical good/service before designing checkout.

**Gate:** Approved data model, deletion design, auth/provider design, permissions map, SDK inventory, and payment classification.

## Phase 2 — Feature implementation (build safeguards with the feature)

Implement only applicable modules:

- Account registration, sign-in, session restoration, sign-out, provider linking/unlinking, and in-app account deletion.
- External account-deletion web page and backend workflow when Google Play account creation rules apply.
- If UGC exists: terms acceptance before contribution, prohibited-content rules, report content/user, block users where applicable, moderation queue, moderator actions, escalation/contact path, and audit trail.
- If location/photos/camera/microphone/contacts are used: purpose-specific explanation, just-in-time request, least-privilege access, and fallback behavior.
- If AI data leaves the app: disclose what is sent, why, and to which service; obtain any required user permission/consent before transfer.
- If tracking for cross-app activity/advertising occurs on iOS: implement App Tracking Transparency correctly before tracking; do not request ATT for ordinary analytics that is not tracking.
- If paid digital features are sold: use the applicable native store billing system or a clearly documented regional/program exception. If payments are for physical goods/services consumed outside the app, classify under the appropriate exception.
- If ads are present: implement age-appropriate ad behavior and consent/disclosure where required.

**Gate:** Feature acceptance tests include privacy, safety, denial, deletion, and moderation paths—not just the happy path.

## Phase 3 — Machine A completion (static and local verification)

Machine A should complete as much of the code and test work as its resources permit:

- Run formatter, analyzer, unit tests, widget tests, backend tests, migration checks, dependency/license inventory, and secret scanning where available.
- Check every permission declared by Android/iOS plugins against an actual feature requirement.
- Build privacy data maps from actual implementation and SDK declarations; do not write final declarations from assumptions.
- Test account deletion logic, ownership/RLS tests, UGC tests, and mocked OAuth/permission flows where possible.
- Produce a policy applicability report with `PASS / FAIL / BLOCKED / NOT RUN` evidence.

**Gate:** Machine A exit report must list all platform-dependent checks not possible on Machine A. Never label native/provider/store checks as passed based only on mocks or static analysis.

## Phase 4 — Machine B native build and real-device QA

- Install the compatible Flutter toolchain, Android SDK/build tools, required JDK, NDK/CMake only when a dependency requires them, and all required native plugins.
- Use `flutter pub get`, audit resolved dependencies, and inspect AndroidManifest, iOS Info.plist, entitlements, URL schemes, privacy manifests, and transitive native SDKs.
- Build and test real Android artifacts. Verify current Play target API requirements at release time.
- For iOS, use macOS + Xcode. Windows can author Flutter source but cannot perform the iOS archive/sign/upload workflow. Test on Simulator and physical iPhone.
- Test real Google / Apple OAuth provider credentials, callbacks, cancellation, revoked access, account linking, and deletion.
- Test every permission grant/deny/revoke path, OS picker, push notification, upload, billing flow, deep link, and background behavior actually used.
- Perform security tests: IDOR/cross-account access, RLS, API auth, rate limits, secret exposure, upload validation, transport security, deletion cascades, and storage rules.
- Test crash-free operation, slow/offline networks, app lifecycle, accessibility, supported OS versions, screen sizes, and upgrade behavior.

**Gate:** Evidence from actual target-platform builds and devices. A Windows-only Android test does not verify iOS.

## Phase 5 — Store submission preparation (after feature-complete build, before submission)

- Publish a real, active, globally accessible privacy-policy URL; add the link inside the app and in store metadata.
- Freeze the release dependency/SDK inventory and prepare accurate Apple App Privacy and Google Play Data Safety answers from actual behavior.
- Complete target-audience declarations, age/content rating questionnaires, ads declarations, and any permission declarations.
- Prepare accurate app name, icon, screenshots, description, category, support URL, contact information, and release notes. Do not claim features that are not present or depict unavailable screens.
- Provide working reviewer access: non-expiring demo account or full-featured demo mode, test data, instructions, and a live backend. Explain roles and special access steps.
- Prepare signing, bundle/package identifiers, versioning, privacy manifest/required-reason checks, export-compliance answers, and platform build requirements.
- For eligible new Google Play personal developer accounts, schedule the required closed testing and production-access process early.
- Recheck all policies and account-specific Play Console / App Store Connect tasks immediately before submission.

**Gate:** Release candidate and store declaration answers match the exact binary, backend, SDKs, and data practices being submitted.

## Phase 6 — Post-release maintenance

- Re-run policy and SDK reviews whenever features, plugins, ads, analytics, AI providers, data flows, permissions, billing, or target audience change.
- Update privacy policy, App Privacy, Data Safety, age/content declarations, and permission explanations when actual practices change.
- Track policy deadlines, platform SDK requirements, security advisories, crash reports, and moderation/delete requests.
- Keep support and moderation channels staffed and respond within the process promised to users.

## Never do these

- Do not promise store approval or treat review as a debugging service.
- Do not hide functionality from reviewers, change behavior based on reviewer detection, or remotely activate undocumented features.
- Do not ship fake login, fake purchases, dead buttons, placeholder pages, broken backend dependencies, or demo data presented as live.
- Do not request every permission at first launch.
- Do not add a privacy policy or Data Safety declaration that does not match the app and its SDKs.
- Do not postpone account deletion, UGC safeguards, payment classification, or data architecture until the final QA phase.
