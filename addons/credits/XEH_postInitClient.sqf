#include "script_component.hpp"

["loadout", {
    params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
    if ("AOR_item_CreditCard" in items _unit) then {
        [QGVAR(createCard), [_unit]] call CBA_fnc_serverEvent;
    };
}, true] call CBA_fnc_addPlayerEventHandler;

// "Inspect" action for owned credit cards
["AOR_item_CreditCard", "ALL", LLSTRING(CreditCardOwned_inspect), nil, nil, {
    params ["", "", "_item"];
    getNumber (configFile >> "CfgWeapons" >> _item >> QGVAR(cardId)) > 0;
}, {
    params ["", "", "_item"];
    private _id = getNumber (configFile >> "CfgWeapons" >> _item >> QGVAR(cardId));
    GVAR(creditCards) getOrDefault [_id, [0, localize "$STR_A3_Group_Unknown"]] params ["_balance", "_owner"];
    hintSilent format [LLSTRING(CreditCardOwned_inspectTooltip), _owner, _balance, _id];
}] call CBA_fnc_addItemContextMenuOption;