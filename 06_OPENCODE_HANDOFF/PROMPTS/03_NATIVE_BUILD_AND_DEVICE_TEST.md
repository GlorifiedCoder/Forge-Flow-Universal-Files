# OpenCode Prompt — Native Build and Real-Device Verification

Use this only after the read-only audit and approved corrections.

Inspect project manifests and determine the exact required Flutter, JDK, Gradle, Android Gradle Plugin, Kotlin, SDK, build-tools, NDK and CMake versions. Do not install arbitrary latest versions or unnecessary NDKs.

Then:
1. Resolve all Flutter plugins and native dependencies.
2. Build debug Android APK.
3. Install and run on an emulator.
4. Install and run on a physical Android device.
5. Test OAuth/deep links, permissions, lifecycle, database access, offline/error cases, notifications and project-specific native functions.
6. Capture logs/screenshots for failures.
7. Fix approved defects and rerun tests.
8. Build release candidate and verify signing only when credentials are safely configured.

Record actual commands, tool versions, device/OS, artifact hash, results and untested scenarios. Do not say the iOS app was tested unless it was built and tested on macOS/Xcode with an appropriate simulator or device.
