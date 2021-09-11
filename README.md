# vscode-sqf

[SQF](https://community.bistudio.com/wiki/SQF_syntax) Language support for VS Code  
[Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=vlad333000.sqf)

## Features

* Full SQF language syntax
* Preprocessor commands [Wiki](https://community.bistudio.com/wiki/PreProcessor_Commands)
* Highlight structured text attributes, escape characters and placeholders [Wiki](https://community.bistudio.com/wiki/Structured_Text)
* Highlight deprecated commands and some invalid statements
* Highlight identifiers reserved by developers and most popular mods (Such as [ACE](https://github.com/acemod/ACE3), [CBA A3](https://github.com/CBATeam/CBA_A3), [TFAR](https://github.com/michail-nikolaev/task-force-arma-3-radio)) *
* The color difference between global and local variables *
* Snippets library **

*To enable this syntax highlighting, you need to customize themes following [this instruction](https://code.visualstudio.com/docs/getstarted/themes#_customizing-a-color-theme). Required textMate spaces:
```json
"variable.name.public.sqf"              // Global variables
"variable.name.private.sqf"             // Local variables
"support.variable.<TAG>.sqf"            // Reserved and defined variables (Supported TAGs listed below)
"support.variable.<TAG>.reserved.sqf"   // Reserved variables, but may not exists (Supported TAGs listed below)
```

**Examples:
```
xor     >> ((A || B) && !(A && B))
ifthrow >> if (COND) throw [__FILE__, __LINE__, "exception"]
setvar  >> namespace setVariable ["TAG_name", value]
getvar  >> namespace getVariable "TAG_name"
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

* [ArmA 3 (v2.06)](https://community.bistudio.com/wiki/Category:Arma_3:_Editing)
  * [Functions](https://community.bistudio.com/wiki/Category:Arma_3:_Functions)
  * [Commands](https://community.bistudio.com/wiki/Category:Scripting_Commands_Arma_3)
  * Reserved and defined identifiers:
  ```
  BIS
  ```
  * Reserved identifiers:
  ```
  ACE, ACRE, ALIVE, ARMST, BIS, BP, CBA, CUP, EPOCH, HA, HMG, LIB, RHS, STGU, TFAR, VTN, WOG, XCAM
  ```
