using System.Collections.ObjectModel;
using ManyWeapons.Model;
using ManyWeapons.ViewModel;

namespace ManyWeapons.Grouping
{
    public static class WeaponSubCatGrouping
    {
        //public static EditorSection BuildGeneralSection(WeaponFile file)
        //{
        //    var section = new EditorSection { Name = "General Info" };

        //    // Group: Basic Fields (textboxes)
        //    var basicGroup = new EditorSubGroup
        //    {
        //        Name = "Basic Fields",
        //        Entries = new ObservableCollection<WeaponEntry>(
        //            new[] { "displayName", "modeName", "altWeaponName", "AIOverlayDescription" }
        //                .Select(key => new WeaponEntry(key, file.GetValue(key) ?? ""))
        //        )
        //    };

        //    // Group: Dropdown Fields (combo boxes)
        //    var dropdownGroup = new EditorSubGroup
        //    {
        //        Name = "Dropdown Fields",
        //        Entries = new ObservableCollection<WeaponEntry>(
        //            new[]
        //            {
        //        new WeaponEntry("inventoryType", file.GetValue("inventoryType") ?? "primary"),
        //        new WeaponEntry("weaponType", file.GetValue("weaponType") ?? "bullet"),
        //        new WeaponEntry("weaponClass", file.GetValue("weaponClass") ?? "rifle"),
        //        new WeaponEntry("penetrateType", file.GetValue("penetrateType") ?? "none"),
        //        new WeaponEntry("impactType", file.GetValue("impactType") ?? "bullet_small"),
        //        new WeaponEntry("fireType", file.GetValue("fireType") ?? "Full Auto"),
        //        new WeaponEntry("targetFolder", file.GetValue("targetFolder") ?? "1: Single-Player")
        //            }
        //        )
        //    };

        //    var boolGroup = new EditorSubGroup
        //    {
        //        Name = "Boolean Flags",
        //        Entries = new ObservableCollection<WeaponEntry>(
        //            WeaponEntry.BoolFields.Select(key =>
        //                new WeaponEntry(key, NormalizeBoolValue(file.GetValue(key) ?? "false"))
        //            )
        //        )
        //    };

        //    string NormalizeBoolValue(string raw)
        //    {
        //        if (string.IsNullOrWhiteSpace(raw)) return "false";

        //        var lower = raw.ToLowerInvariant();
        //        if (lower == "1" || lower == "yes") return "true";
        //        if (lower == "0" || lower == "no") return "false";
        //        if (lower == "true" || lower == "false") return lower;

        //        return "false";  // fallback
        //    }


        //    section.Subgroups.Add(basicGroup);
        //    section.Subgroups.Add(dropdownGroup);
        //    section.Subgroups.Add(boolGroup);

        //    return section;
        //}


        public static EditorSection BuildGeneralSection(WeaponFile file)
        {
            var section = new EditorSection
            {
                Name = "General Info",
                UsesSubgroups = false // flat layout (not sub-tabbed)
            };

            // Left side: text and dropdown fields
            var mainKeys = new[]
            {
        "displayName", "modeName", "altWeaponName", "AIOverlayDescription", "playerAnimType",
        "inventoryType", "weaponType", "weaponClass", "offhandClass", "penetrateType", "impactType",
        "fireType", "clipType", "targetFolder"
    };

            foreach (var key in mainKeys)
            {
                section.Entries.Add(new WeaponEntry(key, file.GetValue(key) ?? ""));
            }

            // Grouped bool categories
            var adsFields = new[]
            {
        "hasADS", "adsFireOnly", "adsReload", "noADSWithEmpty", "noADSWhenMagEmpty", "aimDownSight"
    };

            var reloadFields = new[]
            {
        "noPartialReload", "segmentedReload", "noDropCleanup", "avoidDropCleanup", "noADSAutoReload"
    };

            var movementFields = new[]
            {
        "noProne", "blocksProne", "twoHanded", "bayonet"
    };

            var weaponFlags = new[]
            {
        "isArmorPiercing", "isBoltAction", "isEnhanced", "isSilenced", "isRifleBullet"
    };

            var laserNVFields = new[]
            {
        "hasLaserSight", "laserSightDuringNightvision", "rechamberWhileAds"
    };

            void AddGroup(string groupName, string[] keys)
            {
                section.Entries.Add(new WeaponEntry($"__header__{groupName}", ""));

                foreach (var key in keys)
                {
                    var rawValue = file.GetValue(key) ?? "false";
                    section.Entries.Add(new WeaponEntry(key, NormalizeBoolValue(rawValue)));
                }
            }

            AddGroup("ADS Settings", adsFields);
            AddGroup("Reload Settings", reloadFields);
            AddGroup("Movement Settings", movementFields);
            AddGroup("Weapon Flags", weaponFlags);
            AddGroup("Laser/NV Settings", laserNVFields);

            return section;

            string NormalizeBoolValue(string raw)
            {
                var lower = raw.ToLowerInvariant();
                return lower switch
                {
                    "1" or "yes" => "true",
                    "0" or "no" => "false",
                    "true" or "false" => lower,
                    _ => "false"
                };
            }
        }



        public static EditorSection BuildAnimationSection(WeaponFile file)
        {
            var section = new EditorSection { Name = "Animations", UsesSubgroups = true };

            var stateTimerKeys = new HashSet<string>(new[]
            {
        "fireTime", "fireDelay", "meleeTime", "meleeDelay", "meleeChargeTime", "meleeChargeDelay",
        "reloadTime", "reloadEmptyTime", "reloadStartTime", "reloadEndTime", "reloadAddTime", "reloadStartAddTime",
        "rechamberTime", "rechamberBoltTime",
        "dropTime", "raiseTime", "firstRaiseTime", "altDropTime", "altRaiseTime", "quickDropTime", "quickRaiseTime", "emptyDropTime", "emptyRaiseTime",
        "sprintInTime", "sprintLoopTime", "sprintOutTime",
        "nightVisionWearTime", "nightVisionWearTimeFadeOutEnd", "nightVisionWearTimePowerUp",
        "nightVisionRemoveTime", "nightVisionRemoveTimePowerDown", "nightVisionRemoveTimeFadeInStart"
    });

            var xanimKeys = new HashSet<string>(new[]
            {
        "idleAnim", "emptyIdleAnim", "fireAnim", "lastShotAnim", "rechamberAnim",
        "meleeAnim", "meleeChargeAnim",
        "reloadAnim", "reloadEmptyAnim", "reloadStartAnim", "reloadEndAnim",
        "raiseAnim", "dropAnim", "firstRaiseAnim", "altRaiseAnim", "altDropAnim",
        "quickRaiseAnim", "quickDropAnim", "emptyRaiseAnim", "emptyDropAnim",
        "sprintInAnim", "sprintLoopAnim", "sprintOutAnim",
        "nightVisionWearAnim", "nightVisionRemoveAnim",
        "adsFireAnim", "adsLastShotAnim", "adsRechamberAnim", "adsUpAnim", "adsDownAnim"
    });

            // Collect assigned keys to prevent overlap
            var assignedKeys = new HashSet<string>();

            // State Timers group
            var stateTimerEntries = file.KeyValues
                .Where(kv => stateTimerKeys.Contains(kv.Key))
                .Select(kv => { assignedKeys.Add(kv.Key); return kv; })
                .ToList();

            if (stateTimerEntries.Any())
            {
                section.Subgroups.Add(new EditorSubGroup
                {
                    Name = "State Timers",
                    Entries = new ObservableCollection<WeaponEntry>(stateTimerEntries)
                });
            }

            // XAnims group (EXCLUDE anything already assigned)
            var xanimEntries = file.KeyValues
                .Where(kv => xanimKeys.Contains(kv.Key) && !assignedKeys.Contains(kv.Key))
                .ToList();

            if (xanimEntries.Any())
            {
                section.Subgroups.Add(new EditorSubGroup
                {
                    Name = "XAnims",
                    Entries = new ObservableCollection<WeaponEntry>(xanimEntries)
                });
            }

            return section;
        }



        public static List<EditorSection> BuildDynamicGroups(WeaponFile file)
        {
            var dynamicGroups = file.KeyValues
                .Where(kv =>
                    !MainViewModel.GeneralKeys.Contains(kv.Key) &&
                    !MainViewModel.AmmoKeys.Contains(kv.Key) &&
                    !MainViewModel.ModelKeys.Contains(kv.Key) &&
                    !MainViewModel.AnimationKeys.Contains(kv.Key) &&
                    !MainViewModel.SoundKeys.Contains(kv.Key))
                .GroupBy(kv =>
                {
                    if (kv.Key.StartsWith("hip") || kv.Key.StartsWith("ads")) return "ADS & Hip Settings";
                    if (kv.Key.StartsWith("prone")) return "Prone Settings";
                    if (kv.Key.StartsWith("sprint")) return "Sprint Settings";
                    if (kv.Key.StartsWith("melee")) return "Melee Settings";
                    if (kv.Key.StartsWith("reload")) return "Reload Settings";
                    if (kv.Key.StartsWith("recoil")) return "Recoil Settings";
                    if (kv.Key.StartsWith("view")) return "View Settings";
                    if (kv.Key.StartsWith("nightVision")) return "Night Vision Settings";
                    if (kv.Key.StartsWith("reticle")) return "Reticle Settings";
                    if (kv.Key.StartsWith("gun")) return "Gun Settings"; 
                    return "Miscellaneous";
                });

            var sections = new List<EditorSection>();

            foreach (var group in dynamicGroups)
            {
                if (group.Key == "ADS & Hip Settings")
                {
                    var hipEntries = group.Where(kv => kv.Key.StartsWith("hip")).ToList();
                    var adsEntries = group.Where(kv => kv.Key.StartsWith("ads")).ToList();

                    var section = new EditorSection
                    {
                        Name = group.Key,
                        UsesSubgroups = true,
                        Subgroups = new ObservableCollection<EditorSubGroup>
        {
            new EditorSubGroup { Name = "ADS", Entries = new ObservableCollection<WeaponEntry>(adsEntries) },
            new EditorSubGroup { Name = "Hip", Entries = new ObservableCollection<WeaponEntry>(hipEntries) }
        }
                    };

                    sections.Add(section);
                }
                else
                {
                    // default behavior
                    sections.Add(new EditorSection
                    {
                        Name = group.Key,
                        Entries = new ObservableCollection<WeaponEntry>(group)
                    });
                }
            }

            return sections;
        }


        public static List<EditorSubGroup> BuildGroupedSections(
            Dictionary<string, IEnumerable<string>> groupKeyMap,
            WeaponFile file)
        {
            var subGroups = new List<EditorSubGroup>();
            var assignedKeys = new HashSet<string>();

            foreach (var group in groupKeyMap)
            {
                var groupName = group.Key;
                var keys = new HashSet<string>(group.Value);

                var entries = file.KeyValues
                    .Where(kv => keys.Contains(kv.Key) && !assignedKeys.Contains(kv.Key))
                    .ToList();

                // Mark these keys as used
                foreach (var entry in entries)
                {
                    assignedKeys.Add(entry.Key);
                }

                if (entries.Any())
                {
                    subGroups.Add(new EditorSubGroup
                    {
                        Name = groupName,
                        Entries = new ObservableCollection<WeaponEntry>(entries)
                    });
                }
            }

            return subGroups;
        }


        private static IEnumerable<WeaponEntry> FilterExclusiveEntries(
    IEnumerable<WeaponEntry> allEntries,
    HashSet<string> includeKeys,
    HashSet<string> excludeKeys
)
        {
            return allEntries.Where(kv => includeKeys.Contains(kv.Key) && !excludeKeys.Contains(kv.Key));
        }
    }
}
