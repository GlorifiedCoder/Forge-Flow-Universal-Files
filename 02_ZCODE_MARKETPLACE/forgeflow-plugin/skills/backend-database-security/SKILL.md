---
name: backend-database-security
description: Use when implementing or reviewing APIs, backend services, database schemas/migrations, authentication, authorization, Supabase, storage, or privacy-sensitive data handling.
---


# Backend, Database and Security Engineering

1. Use current official documentation for the selected backend/database/auth provider before implementation.
2. Design schema and migrations before feature persistence. Include keys, constraints, indexes, ownership, retention and deletion behavior.
3. Enforce authorization server-side and at the database layer where supported; never trust client-supplied ownership IDs.
4. Test positive and negative authorization, including cross-user access denial and privilege escalation.
5. Validate all untrusted input; use parameterized queries/ORM-safe methods.
6. Keep privileged credentials on the server only. Do not expose Supabase secret/service-role keys, OAuth client secrets, signing keys or private keys in mobile app code.
7. Pin dependencies and commit lockfiles. Keep `.env` and local secrets ignored by Git.
8. Add rate limits, audit logs, idempotency and abuse safeguards where the product risk warrants them.
9. Document third-party data sharing, retention, deletion, and processor behavior.
10. Verify migrations and security policies against a test project before production.
