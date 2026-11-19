# Apple App Store and Google Play — Policy Research Snapshot

**Checked:** 2026-11-20

**Scope:** General mobile apps built with Flutter, with common account, cloud-backend, social login, user content, permissions, analytics, and optional payment features. This is an engineering checklist, not legal advice. Always confirm the actual live rules for the app category, region, audience, and submission date.

## Apple App Store — current findings

### Login services

Apple Guideline 4.8 says apps using third-party/social login to create or authenticate the primary app account must also offer an equivalent login service that limits data collection, allows the user's email to be private, and does not collect in-app interactions for advertising without consent. Sign in with Apple is the standard choice for a Flutter app that uses Google sign-in on iOS, unless an explicit exception in the guideline applies. Assess the exact login purpose and exceptions rather than assuming all login types are covered.

### Account deletion

If an app supports account creation, users must be able to initiate account deletion inside the app. The option should be easy to find, normally in account settings, and delete the account plus associated data not legally required to be retained. A web page may complete the process only when linked directly; ordinary apps should not force users to call, email, or contact support to delete. Where Sign in with Apple is used, Apple says to revoke user tokens with its REST API and process applicable server-to-server notifications.

### Privacy and permissions

Apple requires a privacy policy URL in App Store Connect and an easily accessible link in the app. It must describe collection, use, third-party sharing, retention, deletion, and consent withdrawal. Apps should minimize data and permissions, use system pickers/share sheets instead of broad protected-resource access where possible, and provide alternatives when a user declines a non-essential permission. If personal data is sent to third-party AI, disclose the sharing and obtain explicit permission as required by Guideline 5.1.2. App Tracking Transparency is required when the app tracks users across apps or websites for advertising/measurement; it is not a generic permission for ordinary analytics.

### User-generated content

Apps that let users create, upload, share, or contribute content must include a way to filter objectionable material before posting, a mechanism to report offensive content and timely responses, the ability to block abusive users, and published contact information. Apple expects ongoing moderation and can remove apps whose safeguards or responses are inadequate.

### Payments

Digital goods, app functionality, digital content, and subscriptions generally fall under Apple's In-App Purchase rules unless a current guideline exception or entitlement applies. Physical goods and services consumed outside the app should use payment methods other than IAP. Classify each transaction precisely; regional exceptions and entitlements can vary.

### Functionality, originality and reviewer access

Apple expects functionality beyond a repackaged website or low-value link collection. Do not copy another app's brand, icon, name, or UI in a way that infringes or impersonates. Before submission, test the actual device build, remove placeholders, keep backend services online, and provide working demo credentials or an appropriate full-featured demo mode and review notes for account-based apps.

### Privacy manifests and SDKs

Inventory every third-party SDK/plugin. Apple requires privacy manifests for listed SDKs and signatures for listed binary dependencies; required-reason APIs must be declared appropriately. Do not generate a generic manifest without auditing actual APIs and all resolved native dependencies. Recheck Apple's live SDK list before every iOS release.

### Current and upcoming iOS build requirements

- Since 2026-04-28, uploads to App Store Connect must be built with Xcode 26 or later using an iOS 26 SDK or later.
- Since 2026-09-09, iOS/iPadOS uploads must target iOS 13 or later.
- Apple's current upcoming-requirements page says that starting 2027-04, uploads must use Xcode 27 / iOS 27 SDK or later and target iOS 15 or later.
- If release is near or after April 2027, use the then-current Xcode requirement from Apple's live page; do not freeze the earlier Xcode 26 assumption.

## Google Play — current findings

### User data, privacy and Data Safety

All apps need a privacy policy in Play Console and accessible in-app. The policy must be public, active, globally accessible, identify the app/developer, explain what data is accessed/collected/used/shared, who receives it, security, retention and deletion. Complete and maintain Data Safety answers that include relevant SDK behavior; declarations must match the real binary, backend and policy. Google requires prominent in-app disclosure and affirmative consent in cases where sensitive/personal data access or collection requires it; this disclosure must appear in normal app use, not only in a website or privacy policy.

Google's Data Safety form applies to apps published on Google Play, including closed/open/production tracks; internal-testing-only apps are exempt according to the Data Safety Help article. Confirm the current console workflow on submission.

### Account deletion

If account creation is available, provide an easy in-app way to initiate deletion and an external web resource/URL where users can request deletion. Delete associated user data, not just disable/freeze an account. Clearly explain lawful/security retention exceptions and keep the privacy policy accurate.

### User-generated content

Apps featuring UGC must require acceptance of terms/user policy before users create or upload content, define prohibited content/behavior, and conduct ongoing moderation. Provide in-app reporting and blocking functions appropriate to the experience. Public UGC/social apps must enable reports for content and users and blocking of users. Apply age/content safeguards where sexual or other restricted material is relevant.

### Payments

Google Play Billing is required for digital goods, digital content, app functionality, and subscriptions distributed through Play unless an applicable policy exception/program applies. It is not used for physical goods or physical services such as transport, airfare or food delivery. Confirm regional programs and exceptions at the time of release.

### Permissions and target audience

Declare the app's target age group accurately. If children are included in the target audience, Families Policy obligations apply. Ask for permissions only when needed and provide prominent disclosure/consent when required. For photo/video selection, prefer Android Photo Picker rather than broad media-library permissions where it meets the use case. Sensitive/high-risk permissions may require a Play Console declaration and review.

### Current Android target API

Starting 2026-08-31, new apps and app updates submitted to Google Play must target Android 16 / API 36 or higher for ordinary phone/tablet apps. Other form factors have distinct rules. Verify the live target API requirement on the date of upload.

### New personal developer account testing

For personal Play Console developer accounts created after 2023-11-13, Google currently requires a closed test with at least 12 testers continuously opted in for at least 14 days before applying for production access. This is account-type/date-specific, not a universal requirement for every publisher. Check the actual Play Console account.

### App access and review

Provide working reviewer credentials and access instructions for all restricted areas. Credentials must remain valid and reusable, including any MFA/OTP-related route. Complete App Content declarations including privacy policy, ads, app access, target audience, content rating and any relevant permission declarations.

## Official sources — recheck before release

### Apple
- App Review Guidelines: https://developer.apple.com/app-store/review/guidelines/
- Account deletion: https://developer.apple.com/help/app-review/guideline-reference/5-1-1-account-deletion
- Complete review information: https://developer.apple.com/help/app-review/before-submitting-for-review/complete-review/
- Privacy manifests: https://developer.apple.com/documentation/bundleresources/privacy-manifest-files
- Third-party SDK requirements: https://developer.apple.com/support/third-party-sdk-requirements/
- Upcoming requirements: https://developer.apple.com/news/upcoming-requirements/
- Xcode system requirements: https://developer.apple.com/xcode/system-requirements/
- Age ratings: https://developer.apple.com/help/app-store-connect/manage-app-information/set-an-app-age-rating

### Google Play / Android
- Developer Program Policy: https://support.google.com/googleplay/android-developer/answer/18265346
- User Data / privacy / deletion: https://support.google.com/googleplay/android-developer/answer/10144311
- Data Safety: https://support.google.com/googleplay/android-developer/answer/10787469
- User Generated Content: https://support.google.com/googleplay/android-developer/answer/9876937
- Payments policy: https://support.google.com/googleplay/android-developer/answer/10281818
- Target API requirements: https://support.google.com/googleplay/android-developer/answer/11926878
- New personal account testing: https://support.google.com/googleplay/android-developer/answer/14151465
- Prepare app for review: https://support.google.com/googleplay/android-developer/answer/9859455
- App access review credentials: https://support.google.com/googleplay/android-developer/answer/15748846
- Target audience and content: https://support.google.com/googleplay/android-developer/answer/9867159
- Android photo picker guidance: https://developer.android.com/about/versions/14/behavior-changes-14

## Research log

| Date checked | Platform | Key current item | Recheck trigger |
|---|---|---|---|
| 2026-11-20 | Apple | Xcode 26/iOS 26 SDK currently required; Xcode 27/iOS 27 SDK from Apr 2027 | Before iOS archive/upload |
| 2026-11-20 | Google Play | API 36 required for ordinary new phone/tablet apps and updates since Aug 31 2026 | Before Android bundle upload |
| 2026-11-20 | Google Play | 12 testers / 14 days applies to qualifying new personal developer accounts | Verify actual Play account |
| 2026-11-20 | Both | Privacy, account deletion, UGC, permissions, payments and reviewer access are feature-dependent but must be planned early | Every major feature and before submission |
