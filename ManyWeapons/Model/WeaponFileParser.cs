using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManyWeapons.Model
{
    public static class WeaponFileParser
    {
        public static WeaponFileData ParseWeaponFile(string raw)
        {
            var data = new WeaponFileData();
            if (string.IsNullOrWhiteSpace(raw)) return data;

            var parts = raw.Trim().Split(new[] { '\\' }, StringSplitOptions.None);
            int index = parts[0].Equals("WEAPONFILE", StringComparison.OrdinalIgnoreCase) ? 1 : 0;

            while (index < parts.Length - 1)
            {
                string key = parts[index].Trim();
                string value = parts[index + 1].Trim();

                if (!string.IsNullOrEmpty(key))
                {
                    data.Fields[key] = value;
                }

                index += 2;
            }

            return data;
        }
    }


}
