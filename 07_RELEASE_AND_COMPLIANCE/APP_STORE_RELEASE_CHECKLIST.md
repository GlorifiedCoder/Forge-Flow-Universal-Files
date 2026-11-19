# Apple App Store Release Checklist

This list is a prompt for project-specific verification, not a complete or permanent statement of all Apple rules.

## Product and review completeness
- [ ] App is feature-complete; no placeholder screens, dead links, fake data presented as live, or broken features.
- [ ] Tested on actual supported Apple devices and current required OS/toolchain.
- [ ] Backend is live for review; reviewer has an active demo account or an appropriate demo mode where account-based features exist.
- [ ] Review notes explain non-obvious features, account access, hardware, test data, subscriptions and external services.
- [ ] Store listing, screenshots, description, privacy answers and app behavior match.

## Login and account
- [ ] Determine whether Sign in with Apple / equivalent privacy-preserving login is required based on the actual third-party login methods and applicable exceptions.
- [ ] Ensure supported sign-in providers work on device, including cancellation/error/relinking behavior.
- [ ] If the app supports account creation, provide the required in-app account deletion path.
- [ ] Explain what data is deleted, what is retained for a lawful/security reason, and how retention is disclosed.

## Privacy and permissions
- [ ] Privacy policy link in App Store Connect and inside the app.
- [ ] Policy accurately identifies collection, use, sharing, processors, retention and deletion.
- [ ] Permissions requested only when needed, with clear purpose; provide alternatives where reasonable.
- [ ] App Privacy details accurately reflect the app and all third-party SDKs.
- [ ] Privacy manifests/signatures or other required SDK disclosures checked against current Apple requirements.

## User content and interactions (if applicable)
- [ ] Objectionable-content filtering/moderation.
- [ ] In-app report mechanism and timely response process.
- [ ] User blocking controls.
- [ ] Published contact information.
- [ ] Community standards and child-safety/age controls appropriate to app content and audience.

## Business and technical
- [ ] In-app purchase/subscription rules reviewed where digital goods/services are sold.
- [ ] Third-party media, trademarks, images, maps, fonts and datasets have appropriate rights/permissions.
- [ ] App supports required network conditions and does not rely on inaccessible services.
- [ ] Bundle ID, signing, capabilities, entitlements, privacy usage descriptions and export compliance reviewed.
- [ ] Age rating, category, screenshots, keywords, support URL and marketing URL accurate.
- [ ] No unnecessary or misleading claims in listing.
