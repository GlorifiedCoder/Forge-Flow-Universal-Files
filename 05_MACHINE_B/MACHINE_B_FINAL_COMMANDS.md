# Machine B — Typical Native Validation Commands

Use only after inspecting manifests and setting up exact project versions.

```powershell
flutter doctor -v
flutter pub get
flutter analyze
flutter test
flutter build apk --debug
adb devices
adb install -r path\to\app-debug.apk
```

A release build command may be `flutter build appbundle --release`, but signing, flavors, obfuscation, environment variables and app-specific build settings must be configured first. Never paste signing secrets into chat or commit them.

For backend:

```powershell
python -m pytest
```

Run the actual project-defined lint/type-check/migration validation commands as documented.
