# Google Play Release Checklist

This list is a prompt for project-specific verification, not a complete or permanent statement of all Google Play rules.

## App completeness and access
- [ ] Release build installs, launches and completes core flows on supported Android versions/devices.
- [ ] App access instructions and reviewer credentials supplied if app functionality is restricted by login, location, membership or other barriers.
- [ ] Test backend and demo data available during review.
- [ ] Listing and actual functionality match; no misleading claims.

## Privacy and user data
- [ ] Public, active, accessible privacy policy URL; policy also available within app.
- [ ] Data Safety form matches actual code, backend, analytics, ads and every included SDK.
- [ ] Sensitive data access and sharing disclosed; permissions justified and consent obtained where required.
- [ ] If users can create accounts, in-app deletion request and an external web deletion resource are available; associated data deletion/retention behavior implemented and disclosed.
- [ ] SDK inventory and privacy disclosures reviewed after dependency/plugin changes.

## User-generated content (if applicable)
- [ ] Terms/community rules prohibit abusive/illegal content.
- [ ] In-app report/flag feature.
- [ ] Blocking controls for relevant user/content interactions.
- [ ] Moderation and timely response process.
- [ ] Child-safety standards/contact/reporting controls if policy category applies.

## Android technical and listing
- [ ] Verify current target API requirements for the submission date.
- [ ] Check permissions, foreground services, notifications, photo/video access and background work against current policy.
- [ ] Signing/app bundle, version code/name, package ID, Play App Signing and release track configured.
- [ ] App content, ads declaration, target audience, content rating, Data Safety and privacy policy forms completed accurately.
- [ ] Store listing, screenshots, feature graphic, icon, contact details, support website and release notes checked.
- [ ] New personal developer account testing/production-access requirements checked in the actual Play Console account; do not hardcode a historical tester threshold into project assumptions.
- [ ] Verify developer identity/account status and any current pre-submission checks.
