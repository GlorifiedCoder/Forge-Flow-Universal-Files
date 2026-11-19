# Conditional Policy-to-Feature Matrix

Use this matrix to decide which modules to build. A feature may trigger multiple policies. Verify current details for the exact region and store.

| App feature / condition | Design/build work (early) | Required feature work (alongside feature) | Release-time declarations / checks |
|---|---|---|---|
| Account creation | Auth model, user-data ownership, provider strategy, deletion data map | In-app delete, deletion processing, external web deletion page for Google Play, revoke provider credentials where required | Verify Apple/Google account deletion requirements; reviewer account and access instructions |
| Google/social login on iOS | Check Apple Guideline 4.8; choose sign-in design | Offer Sign in with Apple unless a stated exception applies; test link/unlink/cancel | Verify current guideline and provider credentials |
| User-generated content (listings, reviews, posts, comments, messages) | UGC risk model, moderator role, content lifecycle, legal/rights model | Terms before contribution; filters; report content/users; block users where applicable; active moderation and escalation; support contact | Accurate age/content ratings; explain moderation and reviewer access |
| Location | Decide whether approximate/manual address is sufficient; map purpose and storage | Just-in-time permission, user-visible purpose, denial fallback; background location only if genuinely core and policy-eligible | Inspect manifests/plists and Play declarations; test denied/revoked/approximate location |
| Photos/video/camera | Prefer OS picker / selected assets; define retention and upload path | Ask when user invokes feature; validate uploads; allow selection without broad library access where possible | Inspect permissions and plugin SDKs; test picker and limited access |
| Microphone/contacts/Bluetooth | Prove core need and minimize access | Permission disclosure and in-context flow; denial alternative | Permission audit and platform declarations |
| Push notifications | Notifications optional to core experience unless genuinely necessary | Ask contextually; provide notification controls and quieting | Test token lifecycle and denied permission; disclose SDK collection |
| Cross-app tracking/ads attribution on iOS | Decide if actual tracking occurs; vendor review | App Tracking Transparency authorization before tracking; respect denied status | App Privacy labels and ad declarations match behavior |
| Analytics/crash reporting | Data inventory and SDK review | Minimize event/user data; consent where required; opt-out where promised | Include all SDK practices in Apple App Privacy / Google Data Safety |
| Third-party AI | Decide what input/output can leave app; data retention/vendor terms | Disclose third-party AI sharing and obtain required permission; protect private/sensitive prompts | Disclose external AI provider in review notes where relevant; check policy and privacy answers |
| Digital subscription / premium app feature | Classify as digital entitlement; choose platform billing architecture | StoreKit / Google Play Billing where required; restore purchases, cancellation and server entitlement validation | Configure product metadata, sandbox/test purchases, refund/cancellation support; check regional exceptions |
| Physical goods / real-world services | Distinguish payment for real-world product/service from digital unlock | Use permitted non-store payment approach for eligible physical goods/services | Verify exact transaction classification, region-specific policy and processor rules |
| Ads / children audience | Set target audience deliberately; choose compliant SDKs | Child-safe ad SDKs and Families requirements if children are target audience | Declare ads, target audience, content rating and privacy accurately |
| Sensitive / regulated category | Determine legal eligibility, operator identity and regional requirements | Implement category-specific safeguards and disclosures | Prepare licenses/regulated documentation; get qualified legal advice |
| Background work / foreground service / full-screen intent | Confirm core user benefit and platform support | Use correct service type, declaration and user-visible controls | Inspect Play Console declarations and current Android OS requirements |
| Copyrighted maps, images, text, video, fonts, music or datasets | Source rights and license inventory | Attribution, license conditions and takedown workflow where relevant | Verify rights for screenshots/listings/media; do not use unlicensed third-party logos |

## Notes

- **Do not add feature modules merely because they appear in a checklist.** If the project does not have UGC, do not build a social moderation system just for appearance. If it does have UGC, implement the necessary safeguards before exposing that feature publicly.
- A property marketplace where users publish listings, photos, descriptions, and reviews should normally be treated as containing UGC and assessed against both Apple and Google UGC requirements.
- A paid listing boost or subscription may be a digital app feature, while rent, a real estate sale, property tour, or other real-world service has a different payment classification. Do not guess; classify each payment separately against the live policy.
