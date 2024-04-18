#include "script_component.hpp"

GVAR(saveData) = ["new", format [QGVARMAIN(saveData_%1), worldName]] call OO_INIDBI;
["Meta", "lastLaunched", systemTime] call FUNC(write);