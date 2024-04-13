class CfgWeapons {
    class CBA_MiscItem_ItemInfo;
    class AOR_ItemInfo_base: CBA_MiscItem_ItemInfo {};

    class CBA_MiscItem;
    class AOR_Item_base: CBA_MiscItem {
        SCOPE_PRIVATE;
        author = AUTHOR;

        picture = QPATHTOF(data\ui\logo_aor_ca.paa);

        class ItemInfo: AOR_ItemInfo_base {};
    };
};