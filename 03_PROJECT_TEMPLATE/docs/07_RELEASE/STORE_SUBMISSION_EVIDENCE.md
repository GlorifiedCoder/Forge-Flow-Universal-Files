# Store Submission Evidence Register

Keep evidence for the exact release candidate being submitted. Do not check an item merely because the code exists; record the tested build, date, result, and evidence.

| Item | Platform | Build / version | Date | Result (PASS / FAIL / BLOCKED / NOT RUN) | Evidence / notes |
|---|---|---|---|---|---|
| Privacy policy live and accessible | Both | | | | |
| In-app privacy policy link | Both | | | | |
| Apple App Privacy matches SDK inventory | Apple | | | | |
| Google Data Safety matches SDK inventory | Google | | | | |
| In-app account deletion | Both when account creation exists | | | | |
| External account deletion URL | Google Play when account creation exists | | | | |
| Provider token revocation on deletion | Apple if Sign in with Apple | | | | |
| UGC report/block/moderation | Both when UGC exists | | | | |
| Permission grant / denial / revoke paths | Both as relevant | | | | |
| Payment sandbox/restore/cancel | Both as applicable | | | | |
| Age/content rating and target audience | Both | | | | |
| Android target API verified | Google | | | | |
| iOS Xcode/SDK requirement verified | Apple | | | | |
| Privacy manifest / required-reason API review | Apple when applicable | | | | |
| Reviewer demo account and access notes | Both when restricted features exist | | | | |
| Store listing screenshots match final app | Both | | | | |
| Signing and release bundle verified | Both | | | | |
| Closed test / production access criteria | Google if account qualifies | | | | |

## Required attachments / records

- Final dependency and Flutter plugin inventory.
- Android merged manifest and iOS Info.plist / entitlements review.
- Apple privacy manifest and Xcode privacy report when applicable.
- Backend RLS/authorization and deletion test reports.
- Device test report for actual Android and iOS hardware.
- Reviewer access instructions and test-account lifecycle.
- Final App Privacy / Data Safety answers and the data inventory version used to complete them.
- Store listing text, screenshots and content rating answers.
