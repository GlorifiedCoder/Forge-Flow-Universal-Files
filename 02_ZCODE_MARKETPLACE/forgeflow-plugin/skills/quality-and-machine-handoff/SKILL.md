---
name: quality-and-machine-handoff
description: Use when testing, reviewing bugs, preparing Machine A exit, handing code to Machine B, or reporting build/test evidence.
---


# Quality and Machine Handoff

1. Build a test matrix from product acceptance criteria.
2. Run formatters, static analysis, unit, widget, backend and contract tests that are available in the current environment.
3. Record exact commands, versions, commit SHA, results and evidence paths.
4. Use PASS, FAIL, BLOCKED, NOT RUN or WAIVED; never turn an unrun test into a pass.
5. Do as much as practical on Machine A but avoid Android Studio/SDK/NDK/emulator/Docker by default on the 4 GB / 10 GB machine.
6. Record native plugins and exact required versions for Machine B; do not guess NDK/JDK requirements.
7. Prepare a clean Git handoff, known issues list and Machine B checklist.
8. Machine B must conduct independent code review, native build, emulator and physical-device tests.
9. iOS build/signing and Simulator/device verification require macOS/Xcode.
10. Never claim “bug-free”; report residual risks and untested paths.
