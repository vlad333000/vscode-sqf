# vscode-sqf

[SQF](https://community.bistudio.com/wiki/SQF_syntax) Language support for VS Code
[Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=vlad333000.sqf)

## Features

* Full SQF language syntax
* Preprocessor commands [Wiki](https://community.bistudio.com/wiki/PreProcessor_Commands)
* Highlight structured text attributes, escape characters and placeholders [Wiki](https://community.bistudio.com/wiki/Structured_Text)
* Highlight deprecated commands and some invalid statements
* Highlight identifiers reserved by developers
* The color difference between global and local variables *
* Snippets library **

*To enable this syntax highlighting, you need to customize themes following [this instruction](https://code.visualstudio.com/docs/getstarted/themes#_customizing-a-color-theme). Required textMate spaces:

```json
"variable.name.public.sqf"              // Global variables
"variable.name.private.sqf"             // Local variables
"support.function.<TAG>.sqf"            // Known functions (Supported TAGs listed below)
"support.variable.<TAG>.sqf"            // Known variables (Supported TAGs listed below)
"support.variable.<TAG>.reserved.sqf"   // Reserved variables and functions = may not exists (Supported TAGs listed below)
```

**Examples:

```text
xor     >> ((A || B) && !(A && B))
ifthrow >> if (COND) throw [__FILE__, __LINE__, "exception"]
setvar  >> namespace setVariable ["TAG_name", value]
getvar  >> namespace getVariable "TAG_name"
```

## Supported products

* [ArmA 3 (v2.14)](https://community.bistudio.com/wiki/Category:Arma_3:_Editing)
  * [Functions](https://community.bistudio.com/wiki/Category:Arma_3:_Functions)
  * [Commands](https://community.bistudio.com/wiki/Category:Scripting_Commands_Arma_3)
  * Reserved identifiers:

  ```text
  BIS, BIN
  ```
