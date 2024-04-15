#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Server execution only.
 *
 * Arguments:
 * 0: Unit recieving the card <OBJECT>
 * 1: Id to use (optional, default: -1) <NUMBER>
 *      - If id is negative, last unused id is used
 *
 * Return Value:
 * The id for the new card <NUMBER>
 *
 * Example:
 * _unit call AOR_credits_fnc_createCard;
 *
 * Public: No
 */

params ["_unit", ["_id", -1]];
private [];

if !(isServer and {("AOR_item_CreditCard" in items _unit)}) exitWith {};

TRACE_2("fnc_createCard",_unit,_id);

if (_id < 0) then {
    TRACE_1("fnc_createCard | negative id, using latest id",GVAR(lastCreditCardId));
    _id = GVAR(lastCreditCardId);
    GVAR(lastCreditCardId) = GVAR(lastCreditCardId) + 1;
};

if (_id > CREDITCARD_MAXID) exitWith {
    WARNING_1("Invalid credit card id passed (%1)",_id);
};

INFO_2("Gave credit card with id %1 to %2",_id,_unit);
_unit removeItem "AOR_item_CreditCard";
_unit addItem format ["AOR_item_CreditCard_%1", _id];

// Don't overwrite an existing balance
GVAR(creditCards) set [_id, [GVAR(defaultBalance), name _unit], true];
_id;