# Machine A Setup — Windows (low-resource)

ZCode is already installed. This guide does not ask you to install it.

## 1. Git

Official download: https://git-scm.com/install/win

Verify in PowerShell:

```powershell
git --version
git config --global user.name
git config --global user.email
```

Set name/email only if not already configured.

## 2. Flutter and Dart (for Flutter apps)

Official manual installation: https://docs.flutter.dev/install/manual

Keep the SDK in a short path, for example `C:\src\flutter`, if that drive has room. Add `C:\src\flutter\bin` to PATH. Dart ships with Flutter; do not install a second Dart SDK unless required.

Verify:

```powershell
flutter --version
dart --version
flutter doctor -v
```

`flutter doctor` may report missing Android/iOS toolchains. That is expected on Machine A. Do not install Android Studio/SDK/NDK just to make `flutter doctor` fully green. Record missing platform tooling for Machine B.

Avoid Android engine precache, emulator images, APK builds and Gradle operations on Machine A. Check disk space before dependency resolution. Keep `.dart_tool`, package caches, and generated artifacts out of Git.

## 3. Python (only when needed)

Official Windows downloads: https://www.python.org/downloads/windows/

Use a currently supported 64-bit Python version compatible with the backend dependencies. Pin the chosen version in project docs. Verify:

```powershell
python --version
python -m pip --version
```

Create a per-project virtual environment:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
```

Never install project packages globally. Exclude `.venv/` from Git.

## 4. Other project-specific tools

Install only if required by the project and after considering resource impact. Hosted Supabase removes the need for local PostgreSQL/Docker in a cloud-first setup. A browser is enough to manage Supabase Dashboard and OAuth provider settings.

## 5. Disk and memory discipline

- Check `Get-PSDrive -PSProvider FileSystem` before large downloads.
- Do not install Android Studio (official Android docs currently list 8 GB RAM / 8 GB free disk as minimum for Studio alone and 16 GB RAM / 16 GB free disk for Studio + Emulator on Windows).
- Avoid multiple emulators, Docker images, large model weights, and duplicate SDKs.
- When a test is heavy or storage-sensitive, move it to CI or Machine B rather than repeatedly retrying on Machine A.
