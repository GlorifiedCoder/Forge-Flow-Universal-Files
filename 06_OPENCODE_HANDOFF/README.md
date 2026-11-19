# OpenCode + DeepSeek Independent Review

Use OpenCode on Machine B after Machine A's exit gate. The purpose is a second-engineer review, not a blind rewrite.

## Model configuration

The intended model is the DeepSeek model the user identifies as “DeepSeek V4.1 Flash”. Model names, provider routes, and API identifiers can change. Verify the exact current model ID, provider endpoint, tool-calling support, context size, pricing, and availability in the chosen provider’s current documentation before configuring OpenCode. Do not hardcode an invented model ID in project files. Store provider API credentials securely outside the repository.

## Review order

1. Read-only repository and architecture review.
2. Security/privacy/database review.
3. Flutter/UI/native integration review.
4. Backend/API review.
5. Test coverage and failure-path review.
6. Produce prioritized findings with file/line references and reproducible evidence.
7. User reviews and approves fixes.
8. Apply fixes in small groups and run relevant tests after each group.
9. Compare final diff with Machine A commit and document changes.

Never start by telling OpenCode to “fix everything” or rewrite the architecture. It must first understand the intended product from the project's source inputs and approved requirements.
