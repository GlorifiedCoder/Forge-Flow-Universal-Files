# Reviewer Access and Submission Packet

Prepare this only after the release candidate is feature-complete. Keep credentials in the store consoles' secure reviewer-access fields or a secure approved channel; never commit real credentials in Git.

## App Review / Play review access

- [ ] Publicly reachable backend is running during review.
- [ ] Demo account is active, stable, reusable, and does not expire during the review window.
- [ ] Provide separate demo accounts for relevant roles (e.g., ordinary user, property owner, moderator/admin only if reviewers need it).
- [ ] Provide reusable test data that demonstrates core features.
- [ ] Explain OTP/MFA, invitation codes, region restrictions, hardware, subscription status, or special setup.
- [ ] Do not make reviewers depend on contacting the developer to access ordinary features.
- [ ] Describe all third-party external services used for core features.
- [ ] Provide support contact information and any regulated-field documentation.
- [ ] Make the app behave the same for reviewers and normal users; no review-detection or feature hiding.

## Apple App Store Connect packet

- [ ] App concept, functionality, intended audience, and business model.
- [ ] Tested device models and OS versions.
- [ ] Demo credentials or full-featured demo mode for account-based functionality.
- [ ] Notes for non-obvious workflows and all required resources.
- [ ] Privacy policy URL and completed App Privacy details.
- [ ] Accurate age rating questionnaire.
- [ ] Screenshots and product metadata from the actual final app.
- [ ] In-app purchase / subscription products and sandbox review setup, if applicable.
- [ ] Bundle ID, signing, entitlements, export compliance and current SDK requirement verified.

## Google Play Console packet

- [ ] Store listing, app icon, screenshots, feature graphic, category, contact and support URL.
- [ ] Privacy policy URL and in-app privacy access.
- [ ] Data Safety form completed from actual app + backend + SDK behavior.
- [ ] Ads declaration.
- [ ] Target audience and content declaration.
- [ ] IARC content rating questionnaire.
- [ ] App access instructions with reusable credentials / OTP bypass instructions where needed.
- [ ] Account deletion URL and working in-app deletion path if accounts can be created.
- [ ] Sensitive permission declarations and supporting video/instructions where required.
- [ ] Target API requirement for the upload date verified.
- [ ] App Bundle, package name, version code/name, signing and Play App Signing checked.
- [ ] Account-specific testing / production-access criteria verified in the actual Play Console.

## Final binary and listing consistency

The following must all describe the same shipped build:

- Actual binary behavior.
- App Store / Play listing text and screenshots.
- Privacy policy.
- Apple App Privacy answers.
- Google Data Safety answers.
- Age/content ratings and target audience.
- Permission explanations and declarations.
- Subscription/payment descriptions.
- Terms/community standards and moderation promises.

Do not submit if any item materially misrepresents the binary or backend.
