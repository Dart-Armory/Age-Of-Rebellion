class CfgWeapons {
    class AOR_Item_base;
    class AOR_item_CreditCard: AOR_Item_base {
        SCOPE_PUBLIC;
        displayName = CSTRING(item_CreditCard_name);
        descriptionShort = "$STR_JLTS_C_descs_CreditCard";
        model = "\MRC\JLTS\contraband\Credits\credit_card.p3d";
        picture = "\MRC\JLTS\contraband\Credits\data\ui\credit_card_ui_ca.paa";
    };
};