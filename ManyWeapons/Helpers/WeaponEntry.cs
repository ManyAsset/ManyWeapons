using System;
using System.Collections.Generic;
using System.Linq;

namespace ManyWeapons.Helpers
{
    public class WeaponEntry
    {
        public string Key { get; set; }
        public string Value { get; set; }

        public WeaponEntry(string key, string value)
        {
            Key = key;
            Value = value;
        }

        // Detect if the key should be an enum dropdown
        public bool IsEnumField => EnumFields.Contains(Key);

        // Detect if the key should be a checkbox
        public bool IsBoolField => BoolFields.Contains(Key);

        // Define which keys are enums
        public static readonly string[] EnumFields = new[]
        {
            "inventoryType", "weaponType", "weaponClass",
            "penetrateType", "impactType", "fireType", "targetFolder"
        };

        // Define which keys are bool
        public static readonly string[] BoolFields = new[]
        {
            "isRifleBullet", "isBoltAction", "hasADS", "noADSWithEmpty"
        };

        // Provide dropdown options per enum field
        public IEnumerable<string> EnumOptions
        {
            get
            {
                return Key switch
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
            }
        }

        public override string ToString()
        {
            return $"{Key}: {Value}";
        }
    }
}
