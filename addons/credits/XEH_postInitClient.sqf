#include "script_component.hpp"

["loadout", {
    params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
    if ("AOR_item_CreditCard" in items _unit) then {
        [QGVAR(createCard), [_unit]] call CBA_fnc_serverEvent;
    };
}, true] call CBA_fnc_addPlayerEventHandler;