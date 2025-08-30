namespace ManyWeapons.Model
{
    public class WeaponEntry
    {
        public string Key { get; set; }
        public string Value { get; set; }

        public bool IsEnumField => EnumFields.Contains(Key);
        public bool IsBoolField => BoolFields.Contains(Key);

        public IEnumerable<string> EnumOptions =>
            Key switch
            {
                "inventoryType" => new[] { "altmode", "item", "offhand", "primary" },
                "weaponType" => new[] { "binoculars", "bullet" },
                "weaponClass" => new[] { "item", "mg", "pistol", "rifle", "smg", "spread" },
                "penetrateType" => new[] { "none", "small", "medium", "large" },
                "impactType" => new[] { "bullet_ap", "bullet_large", "bullet_small", "grenade_bounce", "grenade_explode", "none", "projectile_dud", "rocket_explode", "shotgun" },
                "fireType" => new[] { "2-Round Burst", "3-Round Burst", "4-Round Burst", "Full Auto", "Single Shot" },
                "targetFolder" => new[] { "1: Single-Player", "2: Multi-Player" },
                _ => Array.Empty<string>()
            };

        public static readonly string[] EnumFields =
        {
            "inventoryType", "weaponType", "weaponClass",
            "penetrateType", "impactType", "fireType", "targetFolder"
        };

        public static readonly string[] BoolFields =
        {
    "isRifleBullet",
    "isArmorPiercing",
    "isBoltAction",
    "hasADS",
    "adsFireOnly",
    "adsReload",
    "noADSWithEmpty",
    "noDropCleanup",
    "noPartialReload",
    "segmentedReload",
    "isEnhanced",
    "noProne",
    "isSilenced",
    "hasLaserSight"
};

        public WeaponEntry(string key, string value)
        {
            Key = key;
            Value = value;
        }
    }
}
