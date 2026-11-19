# Store Policy Applicability Assessment — Per App

Complete during product discovery. Mark `YES / NO / UNKNOWN / NOT APPLICABLE`, add evidence, and assign an owner. Do not assume every policy category applies to every app.

## Distribution and identity

| Question | Answer | Evidence / decision |
|---|---|---|
| Google Play distribution? | UNKNOWN | |
| Apple App Store distribution? | UNKNOWN | |
| Other app stores / direct distribution? | UNKNOWN | |
| Countries/regions at launch? | UNKNOWN | |
| Individual or organization developer accounts? | UNKNOWN | |
| Is the app name, logo, UI, content, and brand original/licensed? | UNKNOWN | |

## Users and audience

| Question | Answer | Evidence / decision |
|---|---|---|
| Intended minimum age / target age group? | UNKNOWN | |
| Is the app designed for children or does it include children as a target audience? | UNKNOWN | |
| Does it include social networking, messaging, dating, public profiles, or user interaction? | UNKNOWN | |
| Does it include mature, financial, medical, gambling, crypto, VPN, or other regulated/sensitive content? | UNKNOWN | |

## Accounts and authentication

| Question | Answer | Evidence / decision |
|---|---|---|
| Can users create an account in the app? | UNKNOWN | |
| Is login required for the core function? Why? | UNKNOWN | |
| Providers: email, Google, Apple, phone, other? | UNKNOWN | |
| On iOS, does any third-party/social provider authenticate the primary app account? | UNKNOWN | |
| Is Sign in with Apple required under the current guideline, or is a documented exception applicable? | UNKNOWN | |
| Can users link/unlink providers? | UNKNOWN | |
| Is in-app account deletion implemented? | UNKNOWN | |
| Is an external account deletion web path required and implemented? | UNKNOWN | |
| Does deletion remove all associated data, user content, files, and provider tokens, subject to lawful retention? | UNKNOWN | |

## Data, permissions and third parties

| Question | Answer | Evidence / decision |
|---|---|---|
| Personal data collected or generated? | UNKNOWN | |
| Sensitive data (precise location, financial, health, contacts, photos, messages, etc.)? | UNKNOWN | |
| Location access; foreground/background? | UNKNOWN | |
| Photos/video/camera/microphone/contacts? | UNKNOWN | |
| Push notifications, Bluetooth, background services, device identifiers? | UNKNOWN | |
| Analytics, advertising, crash reporting, attribution SDKs? | UNKNOWN | |
| Third-party AI or external processing of user content? | UNKNOWN | |
| Data processors, transfers, retention, deletion and contact point documented? | UNKNOWN | |
| All Flutter plugins/native SDKs inventoried and reviewed? | UNKNOWN | |

## Content and interactions

| Question | Answer | Evidence / decision |
|---|---|---|
| Can users create, upload, list, review, comment, message, post, or share content visible to others? | UNKNOWN | |
| Is there user-generated content (UGC)? Describe it. | UNKNOWN | |
| Terms/community rules accepted before contribution? | UNKNOWN | |
| Content filtering/moderation/reporting/blocking required and implemented? | UNKNOWN | |
| Published support/contact and moderation response process? | UNKNOWN | |
| Content rights / photo / map / font / data licenses documented? | UNKNOWN | |

## Monetization

| Question | Answer | Evidence / decision |
|---|---|---|
| Ads? Which SDK/network and user groups? | UNKNOWN | |
| Digital features/content/subscriptions sold? | UNKNOWN | |
| Physical goods or real-world services paid for through app? | UNKNOWN | |
| Paid listings, boosts, commissions, booking, or marketplace transaction? | UNKNOWN | |
| Which Apple / Google billing rules and regional exceptions apply? | UNKNOWN | |
| Refund, cancellation, billing and entitlement restoration behavior? | UNKNOWN | |

## Required outcomes

Before architecture approval, the product architect must produce:

- `docs/06_SECURITY_PRIVACY/PRIVACY_DATA_INVENTORY.md`
- `docs/06_SECURITY_PRIVACY/ACCOUNT_AND_DATA_DELETION.md`
- `docs/06_SECURITY_PRIVACY/THREAT_MODEL.md`
- `docs/06_SECURITY_PRIVACY/STORE_COMPLIANCE_IMPLEMENTATION_PLAN.md`
- `docs/07_RELEASE/STORE_REQUIREMENTS_MATRIX.md`
- A list of platform-policy questions requiring specialist/legal advice.
