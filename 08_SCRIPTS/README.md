# Scripts

`New-Project.ps1` copies the blank project template into `WORKSPACES/<Name>` and copies the contents of your separate `00_NEW_APP_INPUTS/` folder into the new project's `00_SOURCE_INPUTS/`.

## Recommended setup

Extract `ForgeFlow_New_App_Inputs.zip` into the root of the universal kit folder. This creates `00_NEW_APP_INPUTS/` next to `08_SCRIPTS/`. Then run:

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\08_SCRIPTS\New-Project.ps1 -Name "MyNewApp"
```

## Keep the input pack elsewhere

You can leave the input ZIP extracted in another location and pass its path explicitly:

```powershell
.\08_SCRIPTS\New-Project.ps1 -Name "MyNewApp" -InputsPath "D:\ForgeFlowInputs\00_NEW_APP_INPUTS"
```

The script refuses to overwrite an existing workspace. Archive the input pack after each project so multiple apps are not mixed.
