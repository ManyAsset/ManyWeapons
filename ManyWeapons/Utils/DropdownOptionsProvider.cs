using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManyWeapons.Utils
{
    public static class DropdownOptionsProvider
    {
        public static readonly Dictionary<string, string[]> EnumOptions = new()
    {
        { "inventoryType", new[] { "altmode", "item", "offhand", "primary" } },
        { "weaponType", new[] { "binoculars", "bullet" } },
        { "weaponClass", new[] { "item", "mg", "pistol", "rifle", "smg", "spread" } },
        { "penetrateType", new[] { "none", "small", "medium", "large" } },
        { "impactType", new[] { "bullet_ap", "bullet_large", "bullet_small", "grenade_bounce", "grenade_explode", "none", "projectile_dud", "rocket_explode", "shotgun" } },
        { "fireType", new[] { "2-Round Burst", "3-Round Burst", "4-Round Burst", "Full Auto", "Single Shot" } },
        { "targetFolder", new[] { "1: Single-Player", "2: Multi-Player" } }
    };

        public static IEnumerable<string> GetOptions(string key)
        {
            return EnumOptions.TryGetValue(key, out var values) ? values : Array.Empty<string>();
        }
    }

}
