# Machine B Setup Guide

Machine B is the full build and test machine. Determine exact versions from the project’s Flutter constraints, Gradle wrapper, Android Gradle Plugin, Kotlin plugin, native plugin requirements, CI configuration, and current official tool documentation. Do not blindly install multiple NDK versions.

## Core tools for Flutter Android

- Git.
- Flutter SDK (same pinned channel/version as project/CI).
- Android Studio and Android SDK command-line/build tools.
- A JDK version compatible with the project's Gradle wrapper and Android Gradle Plugin.
- Android SDK platform/build-tools required by project `compileSdk` and plugin constraints.
- Android platform tools / ADB.
- NDK/CMake only when project plugins/native build require them; install versions declared by project/plugin docs.
- Android Emulator and at least one suitable AVD, if the hardware supports it. A physical Android phone can be used when emulator performance is poor.
- Python and project backend dependencies if the backend runs locally.
- Docker only if the project requires local containers (for example local Supabase stack, containerized backend or CI parity). It is not a default Flutter requirement.
- OpenCode and the chosen model provider configuration for independent audit/fix work.

Official Android Studio requirements: https://developer.android.com/studio/install

Current official requirements should be checked again at setup. Android’s Windows documentation lists 8 GB RAM and 8 GB free disk for Android Studio alone, and 16 GB RAM and 16 GB free disk for Studio plus Emulator; recommended hardware is higher.

## Setup sequence

1. Pull the exact Machine A handoff commit.
2. Read `docs/08_STATUS/MACHINE_B_HANDOFF.md` and `docs/08_STATUS/TEST_EVIDENCE.md`.
3. Run OpenCode in read-only audit mode first. Do not permit automatic edits until findings are reviewed.
4. Install Flutter and run `flutter doctor -v`.
5. Inspect `android/gradle/wrapper/gradle-wrapper.properties`, Android Gradle Plugin, Kotlin, `compileSdk`, `minSdk`, `targetSdk`, `ndkVersion`, and native plugin docs.
6. Install only the needed SDK/NDK/CMake/JDK versions.
7. Fetch packages and resolve plugins. Record all newly required native dependencies.
8. Run format/analyze/test again from a clean checkout.
9. Build debug APK and install on emulator/physical device.
10. Run all end-to-end and permission/auth/deep-link/lifecycle tests.
11. Build a release candidate only after debug acceptance; configure signing through secure local/CI secrets.
12. Record evidence and update project docs.

## iOS requirements

A Windows Machine B cannot perform the final iOS build/signing. Use a Mac with a supported macOS/Xcode version, Apple Developer account where required, signing/provisioning configuration, simulator and physical iPhone testing. Keep signing materials out of Git.

## Machine B completion report

Record tool versions, OS/device details, SDK/NDK/JDK versions, build commands, APK/IPA artifact hashes, emulator/device versions, failed tests, plugin behavior and release blockers.
