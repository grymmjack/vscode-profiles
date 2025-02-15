# QB64PE 2025 vscode Guide
This README contains my [QB64PE](https://www.qb64phoenix.com/) barebones vscode setup instructions and configuration using the [QB64PE extension](https://github.com/grymmjack/qb64pe-vscode)
Previous versions of this profile exist at the root level of this repo. This is the latest version and will be updated throughout 2025 as needed.

After following along you will know enough about vscode configuration and the QB64PE extension to:
- Open a `.BAS` file with syntax highlighting
- Run it with `CTRL-B` to build or `F5` (if you prefer)
- While a `.BAS` file is open use `ALT-Q` to open the file in the QB64PE IDE

## Download and Install vscode
- [Download vscode](https://code.visualstudio.com/download) for your OS.
- Install vscode

## Download and Install QB64PE vscode extension
- Download the [QB64PE extension](https://github.com/grymmjack/qb64pe-vscode)
> Download whatever .vsix file is in the root of this github repo.
> For example: [qb64pe-0.10.6.vsix](https://github.com/grymmjack/qb64pe-vscode/blob/main/qb64pe-0.10.6.vsix)

## Download and Install QB64PE
- [Download QB64PE](https://www.qb64phoenix.com/)
- Install or compile it
- Make note of the directory you install to

## Open QB64PE IDE
- Navigate to where you installed QB64PE and run the `qb64pe` executable if it didn't open when you installed it
- Setup QB64PE options as you like
- Type a simple program: `PRINT "HELLO WORLD!"`
- Run it from the IDE to test everything is working as it should be
- Exit QB64PE

## Open vscode
- Open vscode and get through the initial onboarding/welcome
- You can skip ahead by clicking the `✔️✔️ Mark done` link in bottom left

## Install the extension
- Press `CTRL-SHIFT-P` and type: `devel ext loc` which will highlight `Developer: Install extension from location`
- With `Developer: Install extension from location` highlighted, press `ENTER`
- Navigate to the directory/folder where you downloaded the QB64PE vscode extension
- Click `OK`

## Configure the extension
![image](https://github.com/user-attachments/assets/8e87ef22-ea90-4fb6-b7ac-87abd6908d6a)

1. Go to QB64PE extension settings by clicking the Extensions icon in the Sidebar  

2. Click the cog icon `⚙️` to open the extension settings  

3. For **Qb64pe: Compiler Path Path: Full path to the compiler** (`${config:qb64pe.compilerPath}`)  
   Type the path to your QB64PE executable/binary including the filename:  
   e.g. `/home/grymmjack/git/QB64pe/qb64pe` on Linux,  
   or `C:\Users\grymmjack\git\QB64pe\qb64pe.exe` on Windows,  
   or `/Users/grymmjack/git/QB64pe/qb64pe` on MacOS  

4. For **Qb64pe: Help Path: Full path to the help directory(folder)** (`${config:qb64pe.helpPath}`)  
   Type the path to your QB64PE directory plus add `/internal/help`  
   e.g. `/home/grymmjack/git/QB64pe/internal/help`  

5. For **Qb64pe: Install Path: Full path to the QB64PE directory(folder)** (`${config:qb64pe.path}`)  
   Type the path to your QB64PE directory  
   e.g. `/home/grymmjack/git/QB64pe`

## Customize and Integrate QB64PE into vscode
By default, vscode cannot do what the QB64PE IDE does, including:
- Running the current program (compiling and then executing)
- Getting help for keywords
- Showing errors in real time
- Debugging in real time (stepping through code)

However, you can modify the way vscode works to customize and integrate it to fill these gaps.

## A note about levels of configurations and their purposes
> vscode is an extremely flexible program that has several levels of settings and configurations. 

0. vscode Default preferences
1. Global preferences
2. User preferences 
3. User profile settings
4. Workspace preferences (by proxy of opening a root folder and a `.vscode` folder within it)
5. `.vscode` folder level preferences outside of workspaces

> At each level of configuration you can override the previous level.
For example if you have a setting configured globally for example the font you prefer for font-family, that will apply across every other layer of configuration unless you override it at higher levels.

0. vscode Default preferences
1. Global preference: `"editor.fontFamily": "BerkleyMono Nerd Font"`
2. no override
3. Profile for QB64PE: `"editor.fontFamily": "MorePerfectDOS VGA437 Nerd Font"`
4. no override
5. `.vscode` folder within `C:\oldqb64`, containing an old preference: `"editor.fontFamily": "PerfectDOS VGA437 Win"`

If I open a the `C:\oldqb64` folder in vscode and edit `old-game.bas` by double clicking that file from the workbench explorer, it is going to use my most granular setting (in this case, my font will be `PerfectDOS VGA437 Win` because it is the 5th level, the most explicit and granular override). 

If I open a file on my disk while in another profile not QB64PE specifically, say a python profile, that has no specific `fontFamily` configuration, it's going to use level 1 global preference.

> This is important to understand because you can configure the QB64PE extension at every level!

### Global preferences apply to ALL vscode operation on the installed computer
Global preferences are the lowest level of preference you can set, and if you have something defined that is not the default setting it can be here.  
vscode allows you to edit the Global preferences using `CTRL+,` or the menu: File -> Preferences -> Settings (while it does not say Global, it is global)

### User preferences apply to your logged in user using vscode on the installed computer
User preferences are your own custom settings that you want to have for your own tastes. Imagine a scenario where there is a computer lab at a school, and the teacher configures global preferences for all students. He wants all his students to be able to follow along with his lessons. Now, Timmy is an advanced student and he uses vscode at home, and he wants his own way to do things. He could use User preferences (or other levels of configuration override) to change things to suit his own workflow habits. 

### User profile preferences apply only when a profile is active on the installed computer
vscode is extremely flexible, and includes a great time saving feature where you can setup profiles which include sets of extensions, settings, hotkeys, etc. for each "mode" of work you might want to do. For example, as an old person you might have a Apple2 profile, a C64 profile, and even a QBasic DOS profile, as well as a QB64PE profile. Each of these profiles contain different extensions, settings, color themes, key bindings, etc. suited to the purpose accordingly. This makes it so you can transform vscode into the perfect editor for your individual needs. Other examples might be a python profile, a ruby profile, a rust profile, a c++ profile, etc. Then you can quickly switch the entire configuration and editor to suit your needs at the time on demand.

### Workspace preferences apply only when a workspace is open
vscode allows you to configure your editor with one or more folders already open and setup ready to go called a workspace. You can configure the workspace with layouts, settings, colors, all the same things you can do at the preceding lower levels of configuration but specific to a file based `.vscode-workspace` which when opened can transform the editor into whatever you need for that workspace. This is like a disk based profile. For example you are building something and you want to have your old stuff next to new stuff. You don't care about being able to compile the old stuff, but want it there ready to open and copy from to port forward into the new stuff. So you start vscode and you File -> Add Folder to Workspace `c:\oldstuff` and `c:\newstuff`. Both folders appear in the workspace file explorer pane, and now you can quickly work as you want. Oh but there is another setting you forgot you needed.

### `.vscode` directory the deepest override
You can have `.vscode` directories (yes more than one if you like) throughout your project folders. You could have one at the root level of your project, say the main directory `c:\newstuff\.vscode\` and then even deeper down: `c:\newstuff\oldcrap\.vscode\` and further `c:\newstuff\oldcrap\WIP\.vscode\` -- the evaluation of overrides for all configurations is deepest most specific wins out. Meaning that if you have the same setting in `c:\newstuff\oldcrap\WIP\.vscode\settings.json` as you do in `c:\newstuff\oldcrap\.vscode\settings.json` as you do in `c:\newstuff\.vscode\settings.json` the settings specified in `c:\newstuff\oldcrap\WIP\.vscode\settings.json` is going to be active if you are editing anything in `c:\newstuff\oldcrap\WIP\` . If you later delete this `c:\newstuff\oldcrap\WIP\.vscode\settings.json` file, and edit something inside that `c:\newstuff\oldcrap\WIP\` directory, it will inherit it's parent if it exists, and it's parents parent if it doesn't, and so on until it reachest the top-most root directory currently open in vscode file explorer workbench.

## So what? Why do we care about all this crap? 
Because you can easily gett confused without understanding how it works and there are 3 key files that are relevant to you and QB64PE extension:

- `tasks.json`
- `keybindings.json`
- `launch.json`

### `.vscode/tasks.json`
This file contains tasks, which TL;DR: are things you can do, processes you can run. In some editors these are called External Tools, in some they are plug-ins, but for us we will have a task for: Running: delete old binary, compile new binary.

1. Run depends on:
2. Compile (which in turn depends on:)
3. Delete

Each of these tasks can be configured for the 3 OSes vscode supports: Linux, MacOS, and Windows. vscode uses a configuration convention within a task to define a Default Build task and a Default Debug Task. Our Run task is going to be the default. Why does this matter? Because you could without any further configuration create in your own projects, `.vscode\tasks.json` and then `CTRL-B` which is Build default key binding. 

### `.vscode/keybindings.json`
Because we want to be able to test our code easily we want `F5` to execute run (this is what the IDE uses, and we want to use that too). 
To configure this you use `.vscode/keybindings.json`. But you will need to remove any binding in your OS and any other level lower for it to work. Also by default `F5` will need to be unbound in vscode from Launch to use our new task instead. 


### `.vscode/launch.json`
We do not need a `launch.json` because it isn't finished and in a WIP mode. Typically you would use `launch.json` for debugging and because the QB64PE extension lacks this feature, we will instead null that file out to be just `{}` (an empty `JSON` structure)

# `.vscode/` sample files (copy/paste whatever you need)
Here are some sample `.vscode/` files which you can copy into your projects as you like.

## `tasks.json`
```json
{
  "tasks": [
    {
        "label": "EXECUTE: Run",
        "dependsOn": "BUILD: Compile",
        "type": "shell",
        "windows": {
            "command": "${fileDirname}\\${fileBasenameNoExtension}.exe",
        },
        "osx": {
            "command": "${fileDirname}/${fileBasenameNoExtension}.run",
        },
        "linux": {
            "command": "${fileDirname}/${fileBasenameNoExtension}.run",
        },
        "presentation": {
            "echo": false,
            "reveal": "always",
            "focus": false,
            "panel": "shared",
            "showReuseMessage": false,
            "clear": false
        },
        "group": {
            "kind": "build",
            "isDefault": true
        }
    },
    {
        "label": "BUILD: Compile",
        "dependsOn": "BUILD: Remove",
        "type": "shell",
        "windows": {
            "command": "${config:qb64pe.compilerPath}",
            "args": [
                "-w",
                "-x",
                "-f:MaxCompilerProcesses=8",
                "${fileDirname}\\${fileBasename}",
                "-o",
                "${fileDirname}\\${fileBasenameNoExtension}.exe"
            ]
        },
        "osx": {
            "command": "${config:qb64pe.compilerPath}",
            "args": [
                "-w",
                "-x",
                "${fileDirname}/${fileBasename}",
                "-o",
                "${fileDirname}/${fileBasenameNoExtension}.run"
            ]
        },
        "linux": {
            "command": "${config:qb64pe.compilerPath}",
            "args": [
                "-w",
                "-x",
                "${fileDirname}/${fileBasename}",
                "-o",
                "${fileDirname}/${fileBasenameNoExtension}.run"
            ]
        },
        "presentation": {
            "reveal": "always",
            "clear": true,
            "panel": "shared",
            "focus": false
        }
    },
    {
        "label": "BUILD: Remove",
        "type": "shell",
        "windows": {
            "command": "del",
            "args": [
                "${fileDirname}\\${fileBasenameNoExtension}.exe"
            ]
        },
        "osx": {
            "command": "rm",
            "args": [
                "-f",
                "${fileDirname}/${fileBasenameNoExtension}.run"
            ]
        },
        "linux": {
            "command": "rm",
            "args": [
                "-f",
                "${fileDirname}/${fileBasenameNoExtension}.run"
            ]
        },
        "presentation": {
            "reveal": "always",
            "panel": "shared",
            "focus": false
        }
  ]
}
```

## `.vscode/keybindings.json`
> Make sure to unbind F5 from the default of `debug.openView`:

### Open Keyboard Shortcuts: 
- Use `CTRL-K`+`CTRL-S` (this means hit CTRL-K and quickly use CTRL-S)
- or File -> Preferences -> Keyboard Shortcuts

### Find what is using `F5` and unbind it (optional - you can just use CTRL-B instead)
![image](https://github.com/user-attachments/assets/4e1c9424-0e07-4a63-b7a7-c0583e3efe74)
1. At the top of the Keyboard Shortcuts dialog, type `F5`
2. Where you see `F5` on it's own, find `debug.openView` and delete the keybinding: select it, and press `DEL`
3. This is only necessary because keybindings are context aware (the `When` column) and in this case `F5` will open the debug panel `debug.openView` if there is no debugger available (When: `!debuggersAvailable` (and there is not for QB64PE extension))
4. Contrarily we don't need to modify the default for F5 when a debugger IS available because none is available in our extension
6. This When condition binding the other `F5` says `debuggersAvailable && debugState == 'inactive'` which evaluates to false, so it will never happen
7. However, we do need to find `Debug: Continue` and delete that one because the debugger being stopped lacks a guard for `debuggerAvailable`
8. and only has `debugState == 'stopped'`

```json
[
    {
        "key": "F5",
        "command": "workbench.action.tasks.build"
    }
]
```
