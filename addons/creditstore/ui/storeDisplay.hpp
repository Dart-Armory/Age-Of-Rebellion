class GVAR(storeMenu) {
    idd = IDD_STOREMENU;
    name = QGVAR(storeMenu);
    enableSimulation = TRUE;

    onLoad = QUOTE(uiNamespace setVariable [ARR_2(QQGVAR(storeMenu),_this select 0)];);
    onUnload = QUOTE(uiNamespace setVariable [ARR_2(QQGVAR(storeMenu),nil)]);
};