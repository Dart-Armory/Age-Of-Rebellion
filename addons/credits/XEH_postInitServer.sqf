#include "script_component.hpp"

GVAR(creditCards) = profileNamespace getVariable [format [QGVAR(creditCards_%1), worldName], createHashmap];