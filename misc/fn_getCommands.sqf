// Get info from game
private _commands = supportInfo "";

// Filter only commands (supportInfo also contains types)
_commands = _commands select {_x select [0, count "t:"] != "t:"};
// Extract commands
_commands = _commands apply {
    switch (_x regexReplace ["(\w+):.*", "$1"]) do {
        case "n" : {_x regexReplace ["n:(\S+)", "$1"]};
        case "u" : {_x regexReplace ["u:(\S+)\s.*", "$1"]};
        case "b" : {_x regexReplace ["b:\S*\s(\S+)\s.*", "$1"]};
    };
};
// Lower case everything (just for sure)
_commands = _commands apply {toLower _x};
// Remove duplicates (just for sure)
_commands = _commands arrayIntersect _commands;
// Sort
_commands sort true;

_commands;