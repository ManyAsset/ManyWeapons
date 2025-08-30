using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManyWeapons.Model
{
    public class WeaponFile
    {
        public string FilePath { get; }
        public List<WeaponEntry> KeyValues { get; set; } = new();
        public List<string> HideTags { get; set; } = new();
        public List<NotetrackEntry> NotetrackMap { get; set; } = new();

        private List<string> _originalLines = new();

        public WeaponFile(string path)
        {
            FilePath = path;
            Load(path);
        }

        public void Load(string path)
        {
            _originalLines = File.ReadAllLines(path).ToList();
            string joined = string.Join("\\", _originalLines);

            // Remove the WEAPONFILE header
            if (joined.StartsWith("WEAPONFILE\\"))
                joined = joined.Substring("WEAPONFILE\\".Length);

            // Split into tokens
            var tokens = joined.Split('\\');
            bool isHideTags = false;
            bool isNotetrack = false;

            for (int i = 0; i < tokens.Length;)
            {
                var token = tokens[i];

                if (token == "hideTags")
                {
                    isHideTags = true;
                    isNotetrack = false;
                    i++;
                    continue;
                }
                else if (token == "notetrackSoundMap")
                {
                    isHideTags = false;
                    isNotetrack = true;
                    i++;
                    continue;
                }

                if (isHideTags)
                {
                    HideTags.Add(token);
                    i++;
                }
                else if (isNotetrack)
                {
                    // Notetrack entries use space separator, so join the token until a space is found
                    var split = token.Split(new[] { ' ' }, 2);
                    if (split.Length == 2)
                        NotetrackMap.Add(new NotetrackEntry(split[0], split[1]));
                    i++;
                }
                else
                {
                    // Normal key/value pair
                    if (i + 1 < tokens.Length)
                    {
                        KeyValues.Add(new WeaponEntry(tokens[i], tokens[i + 1]));
                        i += 2;
                    }
                    else break;
                }
            }
        }


        public void Save()
        {
            List<string> sections = new();
            sections.Add("WEAPONFILE");

            // Write only non-hideTag key/value pairs
            foreach (var kv in KeyValues.Where(kv => kv.Key != "hideTag"))
            {
                sections.Add($"{kv.Key}\\{kv.Value}");
            }

            // Write hideTags block only if there are tags
            if (HideTags.Any())
            {
                sections.Add("hideTags");
                foreach (var tag in HideTags)
                {
                    sections.Add(tag);
                }
            }

            // Write notetrackSoundMap block only if there are entries
            if (NotetrackMap.Any())
            {
                sections.Add("notetrackSoundMap");
                foreach (var nt in NotetrackMap)
                {
                    sections.Add($"{nt.NotetrackName} {nt.SoundName}");
                }
            }

            File.WriteAllText(FilePath, string.Join("\\", sections));
        }


        public string? GetValue(string key) => KeyValues.FirstOrDefault(x => x.Key == key)?.Value;

        public void SetValue(string key, string value)
        {
            var entry = KeyValues.FirstOrDefault(x => x.Key == key);
            if (entry != null)
                entry.Value = value;
            else
                KeyValues.Add(new WeaponEntry(key, value));
        }
    }


    public class NotetrackEntry
    {
        public string NotetrackName { get; set; }
        public string SoundName { get; set; }

        public NotetrackEntry(string note, string sound)
        {
            NotetrackName = note;
            SoundName = sound;
        }
    }
}
