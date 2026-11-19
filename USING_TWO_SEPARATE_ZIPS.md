# Using the Two Separate ForgeFlow ZIPs

You should keep two independent ZIP archives:

1. `ForgeFlow_Universal_Files.zip` — reusable system. Extract once and keep as the permanent master.
2. `ForgeFlow_New_App_Inputs.zip` — blank forms/assets you fill for one app at a time. Make a fresh copy for each app.

Recommended folder layout after extraction:

```text
ForgeFlow_Universal_Files/
  01_UNIVERSAL_RULES/
  02_ZCODE_MARKETPLACE/
  03_PROJECT_TEMPLATE/
  04_MACHINE_A/
  05_MACHINE_B/
  06_OPENCODE_HANDOFF/
  07_RELEASE_AND_COMPLIANCE/
  08_SCRIPTS/
  00_NEW_APP_INPUTS/   <-- extracted from second ZIP
```

Run the project creation script only after adding the separate input folder. If you prefer keeping it separate, pass `-InputsPath`. The script copies the input materials into each project's `00_SOURCE_INPUTS/`, leaving the universal kit reusable.
