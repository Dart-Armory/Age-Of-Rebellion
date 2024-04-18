#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Saves data from the mission namespace to the database.
 * Server execution only.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Description <TYPE>
 *
 * Example:
 * [] call AOR_database_fnc_saveServerData;
 *
 * Public: No
 */

if (!isServer) exitWith {
    WARNING("fnc_saveServerData called from non-server context");
};

INFO("Saving mission data");

{
    private _value = missionNamespace getVariable _x;
    (_x splitString "_") params ["", "_section", "_key"];

    if (_value isEqualType createHashmap) then {
        _value = toArray _value;
    };
    [_section, _key, _value] call FUNC(write);
    INFO_2("Saved variable %1 with _value %2",_x,_value);
} forEach GVAR(savedVariables);