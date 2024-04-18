#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Reads a value from the INIDB2 database.
 *
 * Arguments:
 * 0: The section of the value <STRING>
 * 1: The key name <STRING>
 *
 * Return Value:
 * The key's value, or false if value does not exist <STRING|NUMBER|ARRAY|BOOL>
 *
 * Example:
 * [] call AOR_database_fnc_read
 *
 * Public: Yes
 */

params [
    ["_section", "", [""]],
    ["_key", "", [""]]
];
TRACE_2("fnc_read",_key,_section);

if (_section == "" or {_key == ""}) exitWith {};

if !(isServer) exitWith {
    WARNING("fnc_read called from non-server context");
};

["read", [_section, _key]] call GVAR(saveData);