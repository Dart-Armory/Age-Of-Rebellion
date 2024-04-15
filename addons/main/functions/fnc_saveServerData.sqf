#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Server execution only.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Description <TYPE>
 *
 * Example:
 * [] call AOR_main_fnc_saveServerData;
 *
 * Public: No
 */

if (!isServer) exitWith {
    WARNING("fnc_saveServerData called from non-server context");
};

INFO("Saving mission data");

{
    private _data = missionNamespace getVariable _x;
    profileNamespace setVariable [format [_x + "_" + worldName], _data];
    INFO_2("Saved variable %1 with data %2",_x,_data);
} forEach GVAR(savedVariables);