# Real Device Test Matrix

Populate this matrix for each app. Test on supported target OS versions and device classes, not just one emulator.

| Area | Scenario | Emulator | Physical device | Result / evidence |
|---|---|---|---|---|
| Install/update | Fresh install, update over previous version | [ ] | [ ] | |
| Startup/lifecycle | Cold launch, background/foreground, process death, restore | [ ] | [ ] | |
| Network | Online, slow, offline, reconnect | [ ] | [ ] | |
| Auth | Sign up/login/logout, OAuth callbacks, expired session, account linking | [ ] | [ ] | |
| Permissions | Allow, deny, deny permanently, revoke in system settings | [ ] | [ ] | |
| Data | CRUD, ownership isolation, deletion, sync conflict | [ ] | [ ] | |
| UI | Small/large screens, orientation if supported, dynamic text, keyboard | [ ] | [ ] | |
| Accessibility | Screen reader, contrast, focus order, touch target | [ ] | [ ] | |
| Performance | Startup, scroll, memory, battery/network usage | [ ] | [ ] | |
| Security | Unauthorized access, deep-link tampering, sensitive logs, backup behavior | [ ] | [ ] | |
| Native plugins | Camera/location/files/push/payments/maps or project-specific features | [ ] | [ ] | |
| Release | Release signing, install, update, crash-free smoke tests | [ ] | [ ] | |

Only check a cell after executing the scenario and recording evidence.
