# grymmjack's QB64 PE Visual Studio Code profile

![qb64pe-profile](https://user-images.githubusercontent.com/412263/227123786-a59efb2c-ab11-47aa-82a3-144ac9bdbbd2.png)

> For more information about profiles in VSCode: https://code.visualstudio.com/updates/v1_75#_profiles

See YouTube video demonstrating this profile here:  

[![It's More Fun to Compute #2 - QB64 Profile in VSCode](https://img.youtube.com/vi/TF-jJa3G8P4/0.jpg)](https://www.youtube.com/watch?v=TF-jJa3G8P4)

## This profile includes:

- Custom color theme based on MS-DOS Editor Theme (and highly tweaked)
- A VSIX compiled extension for QB64 - https://github.com/grymmjack/qb64pe-vscode/releases/qb64pe-0.10.0.vsix
- Perfect CP-437 TTF Font for DOS feel (optional)

## Profile Installation
1. Download the zip file, unzip it to a temporary directory.
2. If you like, install the TTF fonts (the settings use it but you can customize this or remove it)
3. Open VSCode January 2023 or greater
4. From Cog menu in bottom left corner choose Profiles -> Import Profile...
5. Locate the `QB64PE.code-profile` file and click OK to import it

## QB64 VSCode Extension Installation
1. Type `CTRL-SHIFT-P`
2. Type "Extensions: Install from VSIX"
3. Locate `qb64pe-0.10.0.vsix`
4. Install it
5. In extensions pane, refresh them with little arrow icon
6. Select QB64PE extension
7. From gear icon on extension tile choose Extension Settings
8. Set your settings, and the path to your QB64PE installation

## .vscode Folder Additional Integrations
> The .vscode folder in this directory could be copied and pasted into any QB64 project folder you like. Doingg so will let you have build tasks and snippets you can customize 
> to make your vscode experience even better (make sure you change my name).

Look at the files in `.vscode` directory, and customize as desired.

### `CTRL+SHIFT+B` = Build
1. This removes existing binary if found and it exists
2. Recompiles the code into a new binary
3. Launches the new binary

### Caveats
- I have not fully tested this on Linux yet
- It works on Mac, Linux, and Windows

LMK if you need help :)


