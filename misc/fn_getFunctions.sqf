params [["_prefix", "bis"]];

_prefix = _prefix + "_fnc_";

// Get all CfgFunctions's functions
private _functions = call (uiNamespace getVariable "bis_functions_list");
// Filter by prefix
_functions = _functions select {_x select [0, count _prefix] == _prefix};
// Remove prefix
_functions = _functions apply {_x select [count _prefix]};
// Lower case everything (just for sure)
_functions = _functions apply {toLower _x};
// Remove duplicates (just for sure)
_functions = _functions arrayIntersect _functions;
// Sort
_functions sort true;

_functions;