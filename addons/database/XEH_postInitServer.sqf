#include "script_component.hpp"

// Array of variables to save to the database
GVAR(savedVariables) = [];

GVAR(saveData) = ["new", format [QGVARMAIN(saveData_%1), worldName]] call OO_INIDBI;
["meta", "lastLaunched", systemTime] call FUNC(write);

if !("exists" call GVAR(saveData)) then {
    WARNING("CRITICAL: Unable to create/load saveData from INIDBI2");
};

[QGVAR(save), {
    [] call FUNC(saveServerData);
}] call CBA_fnc_addEventHandler;

addMissionEventHandler ["Ended", {
    [] call FUNC(saveServerData);
}];