# Machine A — Typical Lightweight Checks

Run only when the relevant tools/dependencies exist and resources permit. Adapt commands to the actual project.

## Flutter/Dart

```powershell
dart format --output=none --set-exit-if-changed .
flutter analyze
flutter test
```

Do not use `flutter build apk` or Gradle build on Machine A by default. A `flutter doctor` Android warning can be an expected handoff item.

## Python backend

Activate the project virtual environment, then use the project's pinned tools. Typical examples:

```powershell
python -m compileall app
python -m pytest
```

If Ruff/mypy/other tooling is configured, use the repository's documented commands. Do not install dependencies globally.

## Git

```powershell
git status --short
git diff --check
git log -5 --oneline
```

Record outputs in `docs/08_STATUS/TEST_EVIDENCE.md`.
