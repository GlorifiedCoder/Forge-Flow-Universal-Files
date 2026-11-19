# Start Here — ForgeFlow Universal Files

## What this ZIP contains

Reusable development rules, ZCode skills/commands/agents, blank project workspace template, Machine A and Machine B workflows, OpenCode handoff, security/testing standards, store-readiness checklists, and project creation script.

The blank forms you manually fill for each new idea are in a separate ZIP: `ForgeFlow_New_App_Inputs.zip`.

## One-time setup

1. Keep a clean master copy of this universal folder.
2. Read `04_MACHINE_A/MACHINE_A_SETUP_WINDOWS.md`.
3. Install Git, Flutter SDK and Python only as needed. ZCode is already installed; this kit does not ask you to install it.
4. Install the ForgeFlow local marketplace using `02_ZCODE_MARKETPLACE/INSTALL.md`.

## For every new app

1. Extract a fresh `ForgeFlow_New_App_Inputs.zip` into the root of this folder. It creates `00_NEW_APP_INPUTS/`.
2. Fill the idea/screens/features/flows forms and add the project's reference files.
3. Run `08_SCRIPTS/New-Project.ps1 -Name "MyNewApp"`.
4. If the input pack is elsewhere, add `-InputsPath "C:\path\to\00_NEW_APP_INPUTS"`.
5. Open the generated project folder in ZCode.
6. Run `prompts/00_DISCOVER_AND_PLAN.md` before implementation.

## Project naming

Use a folder-safe name with letters/numbers/hyphens/underscores, e.g. `property-marketplace`. The display name can be different.

## Planning gate

Do not begin implementation until ZCode has created and you have reviewed the product brief, requirements, screen inventory, user flows, design system, architecture, data model, risk register, roadmap, test strategy, privacy inventory and store requirements matrix. Unknowns must remain `UNKNOWN` or `NEEDS_DECISION`.
