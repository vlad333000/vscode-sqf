# vscode-sqf

[SQF](https://community.bistudio.com/wiki/SQF_syntax) Language support for VS Code

## Features

* Full SQF language syntax
* [Preprocessor commands](https://community.bistudio.com/wiki/PreProcessor_Commands)
* Highlight deprecated commands and invalid statements
* Highlight structured text attributes, escape characters and placeholders [Wiki](https://community.bistudio.com/wiki/Structured_Text)
* The color difference between global and local variables *
* Highlight identifiers reserved by developers and most popular mods (Such as [ACE](https://github.com/acemod/ACE3), [CBA A3](https://github.com/CBATeam/CBA_A3), [TFAR](https://github.com/michail-nikolaev/task-force-arma-3-radio)) *

*To enable this syntax highlighting, you need to customize themes following [this instruction](https://code.visualstudio.com/docs/getstarted/themes#_customizing-a-color-theme). Required textMate spaces:
```json
"variable.name.public.sqf" // Global variables
"variable.name.private.sqf" // Local variables
"support.variable.<TAG>.sqf" // Reserved variables and defined (Supported tags listed below in supported products)
"support.variable.<TAG>.reserved" // Reserved variables, but may not exists (Supported tags listed below in supported products)
```

## Recomended themes customization

### Default light +

```json
{
    "scope": "variable.name.public.sqf",
    "settings": {
        "foreground": "#0000ff"
    }
},
{
    "scope": "variable.language.sqf",
    "settings": {
        "foreground": "#795E26"
    }
},
{
    "scope": [
        "support.variable.bis.sqf"
    ],
    "settings": {
        "foreground": "#795E26",
        "fontStyle": "bold"
    }
},
{
    "scope": [
        "support.variable.bis.reserved.sqf",
        "support.variable.ace.sqf",
        "support.variable.ace.reserved.sqf",
        "support.variable.cba.sqf",
        "support.variable.cba.reserved.sqf",
        "support.variable.tfar.sqf",
        "support.variable.tfar.reserved.sqf"
    ],
    "settings": {
        "foreground": "#267F99"
    }
}
```

### Default dark +

```json
{
    "scope": "variable.name.public.sqf",
    "settings": {
        "foreground": "#569CD6"
    }
},
{
    "scope": "variable.language.sqf",
    "settings": {
        "foreground": "#DCDCAA"
    }
},
{
    "scope": [
        "support.variable.bis.sqf"
    ],
    "settings": {
        "foreground": "#DCDCAA"
    }
},
{
    "scope": [
        "support.variable.bis.reserved.sqf",
        "support.variable.ace.sqf",
        "support.variable.ace.reserved.sqf",
        "support.variable.cba.sqf",
        "support.variable.cba.reserved.sqf",
        "support.variable.tfar.sqf",
        "support.variable.tfar.reserved.sqf"
    ],
    "settings": {
        "foreground": "#4EC9B0"
    }
}
```

### Default High contrast

```json
{
    "scope": "variable.name.public.sqf",
    "settings": {
        "foreground": "#569CD6"
    }
},
{
    "scope": "variable.language.sqf",
    "settings": {
        "foreground": "#DCDCAA"
    }
},
{
    "scope": [
        "support.variable.bis.sqf"
    ],
    "settings": {
        "foreground": "#DCDCAA"
    }
},
{
    "scope": [
        "support.variable.bis.reserved.sqf",
        "support.variable.ace.sqf",
        "support.variable.ace.reserved.sqf",
        "support.variable.cba.sqf",
        "support.variable.cba.reserved.sqf",
        "support.variable.tfar.sqf",
        "support.variable.tfar.reserved.sqf"
    ],
    "settings": {
        "foreground": "#4EC9B0"
    }
}
```

## Supported products:

* [ArmA 3 (v1.82 Retail)](https://community.bistudio.com/wiki/Category:Arma_3:_Editing)
  * [Functions](https://community.bistudio.com/wiki/Category:Arma_3:_Functions)
  * [Commands](https://community.bistudio.com/wiki/Category:Scripting_Commands_Arma_3)
  * Reserved and defined edentifiers:
  ```
  BIS
  ```
  * Reserved identifiers:
  ```
  ACE, ACRE, ALIVE, ARMST, BIS, BP, CBA, CUP, EPOCH, HA, HMG, LIB, RHS, STGU, TFAR, VTN, WOG, XCAM
  ```
