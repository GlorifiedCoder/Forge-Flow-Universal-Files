# Machine A Profile

## Known environment

- Windows desktop/laptop.
- 4 GB RAM.
- Approximately 10 GB free storage (re-check before large installs).
- ZCode is already installed. Do not ask the user to install it.
- Intended role: planning, source-code creation, documentation, lightweight local checks, Git operations, and project handoff.

## Install once, as needed

- Git for Windows: required for version control.
- Flutter SDK: required for Flutter/Dart projects. The bundled Dart SDK comes with Flutter.
- Python 3.x: install only if the project has Python backend/scripts or Python testing. Use a project virtual environment; do not install dependencies globally.
- Browser: hosted Supabase, GitHub, OAuth provider dashboards, docs.
- Editor/terminal: existing ZCode environment and PowerShell.

## Do not install by default on Machine A

- Android Studio, Android SDK, Android NDK, Android Emulator.
- Xcode/iOS Simulator (not available on Windows).
- Docker Desktop, local PostgreSQL, local Supabase stack.
- Large local AI model weights.
- Multiple JDK/NDK versions or native toolchains unless a narrowly scoped task proves they are necessary.

## Permitted work

- Build complete app source code where possible.
- Build backend source code and API contracts.
- Write SQL migrations and Supabase configuration/docs.
- Run formatters, linters, static analysis, unit tests, widget tests and backend tests if resource use is acceptable.
- Use mocks/fakes for provider integrations, clearly labeling them as mocked.
- Configure cloud CI to run heavier tests and Android builds.

## Limits

Machine A cannot conclusively verify native plugin builds, Android packaging/signing, emulator behavior, iOS compilation/signing, real OAuth callbacks on all targets, hardware permissions, push delivery, or store review behavior. Those checks must be completed on appropriate environments.
