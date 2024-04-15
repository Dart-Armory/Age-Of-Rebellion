#include "script_component.hpp"

// Execution order of init, serverInit, and clientInit is not guarenteed.
if (isServer) then {
    // Array of variables to save to the server profile's namespace
    GVAR(savedVariables) = [];

    [QGVAR(save), {
        [] call FUNC(saveServerData);
    }] call CBA_fnc_addEventHandler;

    addMissionEventHandler ["Ended", {
        [] call FUNC(saveServerData);
    }];
};