private _commands = supportInfo "" select {
        _x splitString ":" select 0 isNotEqualTo "t";
    } apply {
        switch (_x splitString ":" select 0) do {
            case "n": {
                _x splitString ":" select 1;
            }; case "u": {
                _x splitString ": " select 1;
            }; case "b": {
                _x splitString ": " select 2;
            };
        };
    } apply {
        toLowerANSI _x;
    };
_commands = _commands arrayIntersect _commands;
_commands sort true;
copyToClipboard str _commands;
// warning: return also "code" as command which is result of "b:SWITCH : CODE" command