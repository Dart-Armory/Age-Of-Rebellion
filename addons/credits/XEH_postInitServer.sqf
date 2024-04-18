#include "script_component.hpp"

GVAR(creditCards) = profileNamespace getVariable [format [QGVAR(creditCards_%1), worldName], createHashmap];
GVAR(lastCreditCardId) = profileNamespace getVariable [format [QGVAR(lastCreditCardId_%1), worldName], 1];

EGVAR(database,savedVariables) append [QGVAR(creditCards), QGVAR(lastCreditCardId)];

[QGVAR(createCard), {
    params ["_unit", "_id"];
    TRACE_2("createCard EH",_unit,_id);
    _unit call FUNC(createCard);
}] call CBA_fnc_addEventHandler;