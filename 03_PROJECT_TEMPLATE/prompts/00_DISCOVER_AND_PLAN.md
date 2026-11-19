# ZCode Task — Discover and Plan This App

You are the lead product architect and engineering planner for this app. ZCode is already installed; do not instruct the user to install ZCode.

## First inspect source inputs

Read `AGENTS.md`, every Markdown file in `00_SOURCE_INPUTS/`, and inspect all relevant images, mockups, documents, and existing code. Use the available file/image inspection tools; do not rely only on filenames. Preserve original terminology and product intent.

## Do not code yet

First produce:
1. Product summary, problem, target users, value proposition, goals and non-goals.
2. Feature list prioritized Must/Should/Could and dependencies.
3. Complete screen inventory and screen-by-screen behavior specification.
4. User journeys including errors, cancellation, offline and permissions.
5. Design system inferred from references; explicitly distinguish observed design from proposed interpretation.
6. Recommended stack and architecture with alternatives, tradeoffs and reasons.
7. Data model, API/integration plan and security/access model.
8. Privacy data inventory and store-policy applicability assessment. Read the universal kit files `07_RELEASE_AND_COMPLIANCE/POLICY_IMPLEMENTATION_PHASE_MAP.md`, `POLICY_APPLICABILITY_ASSESSMENT.md`, `CONDITIONAL_POLICY_FEATURE_MATRIX.md`, and `POLICY_RESEARCH_SNAPSHOT_2026-11-20.md` if available; verify live official sources and create `docs/06_SECURITY_PRIVACY/STORE_COMPLIANCE_IMPLEMENTATION_PLAN.md`. Do not assume those universal files are inside this generated project workspace.
9. Risk register, open questions and assumptions.
10. Small phase-by-phase roadmap with Machine A vs Machine B deliverables.
11. Acceptance criteria and test strategy for every important feature.

Populate the corresponding files under `docs/`. Create or update the project `AGENTS.md` with approved stable facts. Do not invent provider access, credentials, legal permission, APIs, prices or business rules.

## Research rules

For changing or specialized facts—platform APIs, Flutter packages, Supabase behavior, store policies, payments, maps, SDK requirements, or legal restrictions—consult current official sources. Cite URLs and date checked in the relevant docs. Mark uncertain items as needing verification.

## Questions

Ask only questions that materially block architecture or feature behavior. Group essential questions in one concise response. Make reasonable reversible assumptions for low-risk details and mark them clearly.

## Stop condition

Do not implement the full app yet. Present the plan and the files created. Wait for the user's approval of the plan and critical decisions before starting Phase 1.
