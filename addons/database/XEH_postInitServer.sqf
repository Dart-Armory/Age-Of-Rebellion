#include "script_component.hpp"

// Array of variables to save to the server profile's namespace
GVAR(savedVariables) = [];

GVAR(saveData) = ["new", format [QGVARMAIN(saveData_%1), worldName]] call OO_INIDBI;
["Meta", "lastLaunched", systemTime] call FUNC(write);

[QGVAR(save), {
    [] call FUNC(saveServerData);
}] call CBA_fnc_addEventHandler;

addMissionEventHandler ["Ended", {
    [] call FUNC(saveServerData);
}];