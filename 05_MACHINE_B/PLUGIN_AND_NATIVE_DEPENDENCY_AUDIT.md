# Plugin and Native Dependency Audit

Before installing tools or building, inspect `pubspec.lock`, `pubspec.yaml`, Android Gradle files, iOS Podfile/project files, plugin release notes and official docs.

| Package/plugin | Version | Android native needs | iOS native needs | Permissions/capabilities | Required SDK/NDK/CMake/JDK | Verification |
|---|---|---|---|---|---|---|
| | | | | | | |

Install only the versions required by the actual project. Plugin presence in `pubspec.yaml` is not proof of successful native integration. Verify build, runtime behavior, lifecycle and permission-denied paths on target devices.
