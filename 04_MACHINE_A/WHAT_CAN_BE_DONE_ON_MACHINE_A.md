# What Can Be Done on Machine A

| Work item | Machine A expectation | Limitation / handoff |
|---|---|---|
| Product discovery and planning | Complete | Requires user decisions where information is missing |
| Flutter UI and app source | Implement as much as possible | Native build/runtime remains unverified |
| Dart state, repositories, business logic | Implement and unit test | Provider/live behavior may need test environment |
| FastAPI or other backend source | Implement and run light tests if resources allow | Production deployment/managed services verified separately |
| SQL migrations and database policies | Write and review | Apply/test against isolated cloud/dev DB or Machine B |
| Supabase hosted project | Manage via browser/dashboard | Use test project; keep keys safe |
| OAuth integration source | Implement callback/config paths and mocks | Real provider credentials/callbacks/device tests on Machine B |
| Unit/widget/backend tests | Run as practical | Record skipped/heavy tests |
| Formatting/static analysis | Run | Low resource; avoid huge concurrent processes |
| CI workflow | Create and validate config | Cloud runner performs full workflow |
| Android APK/AAB | Do not build by default | Machine B/CI |
| Android emulator/native plugin | Do not install on A | Machine B |
| iOS build/signing/Simulator | Source code only | Mac + Xcode |
| Play/App Store submission | Prepare docs/assets/checklists | Store portals, signing, legal declarations and final submission require owner action |

“Complete on Machine A” means all feasible source implementation and checks are finished with honest evidence, not that the app is fully verified or bug-free.
