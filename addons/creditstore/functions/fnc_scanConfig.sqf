#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Loads credit store data from config.
 * Server execution only.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call AOR_creditStore_fnc_scanConfig
 *
 * Public: No
 */

private ["_fnc_filter", "_configPath"];

if (!isServer) exitWith {
    WARNING("AOR_creditStore_fnc_scanConfig called from non-server context");
};

INFO("Scanning credit store items from config");

GVAR(storeWeapons) = createHashmap;
GVAR(storeMagazines) = createHashmap;
GVAR(storeItems) = createHashmap;

_fnc_filter = {
    params ["_config"];
    isClass _config and {getNumber (_config >> "scope") > 0}
};

_configPath = configFile >> QGVAR(listings);

{
    private _name = getText (configFile >> "CfgWeapons" >> configName _x >> "displayName");
    GVAR(storeWeapons) set [configName _x, [
        _name,
        getNumber (_x >> "cost"),
        getArray (_x >> "magazines")
    ]];
} forEach (QUOTE(_x call _fnc_filter) configClasses (_configPath >> "Weapons"));

{
    private _name = getText (configFile >> "CfgMagazines" >> configName _x >> "displayName");
    GVAR(storeMagazines) set [configName _x, [
        _name,
        getNumber (_x >> "cost"),
        getNumber (_x >> "count")
    ]];
} forEach (QUOTE(_x call _fnc_filter) configClasses (_configPath >> "Magazines"));

{
    private _name = getText (configFile >> "CfgWeapons" >> configName _x >> "displayName");
    GVAR(storeItems) set [configName _x, [
        _name,
        getNumber (_x >> "cost"),
        getArray (_x >> "count")
    ]];
} forEach (QUOTE(_x call _fnc_filter) configClasses (_configPath >> "Items"));

GVAR(storeWeapons) = compileFinal GVAR(storeWeapons);
publicVariable QGVAR(storeWeapons);
GVAR(storeMagazines) = compileFinal GVAR(storeMagazines);
publicVariable QGVAR(storeMagazines);
GVAR(storeItems) = compileFinal GVAR(storeItems);
publicVariable QGVAR(storeItems);