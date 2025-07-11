using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManyWeapons.Model
{
    public class WeaponFileData
    {
        public Dictionary<string, string> Fields { get; set; } = new();

        public string? this[string key]
        {
            get => Fields.TryGetValue(key, out var val) ? val : null;
            set => Fields[key] = value ?? "";
        }

        public T Get<T>(string key)
        {
            if (!Fields.TryGetValue(key, out var val)) return default!;
            return (T)Convert.ChangeType(val, typeof(T));
        }
    }
}
