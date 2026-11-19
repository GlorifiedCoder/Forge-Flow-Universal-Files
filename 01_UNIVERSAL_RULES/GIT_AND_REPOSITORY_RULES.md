# Git and Repository Rules

- One Git repository per app. Keep the universal kit separate.
- Initialize with a meaningful README, `.gitignore`, and license decision.
- Commit source code, documentation, SQL migrations, tests, CI config, and lockfiles.
- Ignore secrets, `.env`, `.venv`, build outputs, dependency caches, IDE state, local databases, signing assets, and generated files.
- Use feature branches or small logical commits; do not rewrite shared history without explicit approval.
- Before every destructive action, inspect status and confirm the exact files affected.
- Before Machine B handoff, create a clean commit and record its hash, branch, known issues, setup requirements, and pending checks.
- Never commit a developer's private keys, Apple `.p8` key, Android keystore, service-role/secret API key, or production database dump.
