class GVAR(listings) {
    class Weapons {
        class JLTS_DC15A_plastic {
            scope = 2;      // Only listings with scope of > 0 will appear
            cost = 2200;    // Credit cost
            magazines[] = { // What magazines and how many to give after being purchased
                {"JLTS_DC15A_mag", 2}
            };
        };
    };

    class Magazines {
        class JLTS_DC15A_mag {
            scope = 2;
            cost = 30;
            count = 1;  // Amount of magazines to be given
        };
    };

    class Items {
        class FirstAidKit {
            scope = 2;
            cost = 100;
            count = 1;
        };
    };
};