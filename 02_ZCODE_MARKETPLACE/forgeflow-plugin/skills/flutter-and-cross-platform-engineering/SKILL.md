---
name: flutter-and-cross-platform-engineering
description: Use for Flutter/Dart application development, cross-platform UI, state management, navigation, platform plugins, accessibility, performance, and Flutter testing.
---


# Flutter and Cross-Platform Engineering

1. Follow the app's approved Flutter/Dart version, architecture, state management and navigation decisions.
2. Inspect existing code before modifying; preserve working behavior.
3. Build reusable components and design tokens from approved screen specs; keep visual fidelity to references while making interactions explicit.
4. Implement loading, empty, error, offline, validation and permission-denied states.
5. Use semantic accessibility labels, scalable text, adequate contrast, keyboard handling and appropriate touch targets.
6. Keep platform-specific code isolated behind services/adapters where possible.
7. Add unit/widget tests for state, navigation, validation and visible behavior.
8. On Machine A, run Dart formatting, analyzer, unit/widget tests and avoid heavyweight Android builds.
9. On Machine B, resolve native plugin registration and compile Android; on macOS/Xcode validate iOS.
10. Do not claim plugin/native behavior works based only on mocked tests.
