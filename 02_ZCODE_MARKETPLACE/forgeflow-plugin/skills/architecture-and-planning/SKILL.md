---
name: architecture-and-planning
description: Use when designing a new app architecture, choosing frontend/backend/database/integrations, planning phases, or documenting technical tradeoffs.
---


# Architecture and Planning

1. Use approved product requirements and screen inventory as the architecture source.
2. Compare reasonable stack options when the user has not fixed the stack; state costs and constraints.
3. Prefer a modular, maintainable starting architecture; avoid premature microservices.
4. Define client/server trust boundaries, data ownership, auth, error handling, offline/sync needs, deployment environments and observability.
5. Document entities, relationships, API contracts, migrations, integration limits and version constraints.
6. Produce architecture decisions with options, rationale, impact, and status.
7. Create a phased roadmap. Each phase has deliverables, prerequisites, tests, Machine A tasks, Machine B tasks and exit criteria.
8. Identify anything requiring vendor approval, credentials, Apple/macOS, native SDKs, container services or paid services.
9. Never assume an API can do something until its current official documentation and terms support it.
