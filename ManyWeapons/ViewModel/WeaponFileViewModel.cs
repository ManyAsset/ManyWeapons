using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ManyWeapons.Base;
using ManyWeapons.Model;
using ManyWeapons.View;

namespace ManyWeapons.ViewModel
{
    using System.IO;
    using System.Reflection;
    using System.Windows;
    using System.Windows.Input;
    using System.Windows.Media;
    using ManyWeapons.Model;
    using ManyWeapons.Relay;

    public class WeaponFileViewModel : ViewModelBase
    {
        public WeaponFileData Data { get; set; } = new();
        public string CurrentFilePath { get; private set; }

        public string CurrentWeaponName { get; set; } = "No Weapon Loaded";
        public ObservableCollection<string> RecentWeapons { get; set; } = new();
        public ICommand OpenRecentCommand { get; }

        // to add a section to prompt user that unsaved work will be over written 
        private bool _hasUnsavedChanges;
        public bool HasUnsavedChanges
        {
            get => _hasUnsavedChanges;
            set
            {
                if (_hasUnsavedChanges != value)
                {
                    _hasUnsavedChanges = value;
                    OnPropertyChanged(); 
                }
            }
        }

        private string _saveButtonText = "💾 Save";
        public string SaveButtonText
        {
            get => _saveButtonText;
            set => SetProperty(ref _saveButtonText, value);
        }

        private Brush _saveButtonBackground = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF9800")); // Orange to fit the theme. 
        public Brush SaveButtonBackground
        {
            get => _saveButtonBackground;
            set => SetProperty(ref _saveButtonBackground, value);
        }

        public string AppVersion => $"Version: {Assembly.GetExecutingAssembly().GetName().Version?.ToString(3)}";

        // Save Command
        public ICommand SaveCommand { get; }

        public Dictionary<string, List<string>> EnumOptions { get; } = new()
        {
            ["inventoryType"] = new() { "altmode", "item", "offhand", "primary" },
            ["weaponType"] = new() { "binoculars", "bullet" },
            ["weaponClass"] = new() { "item", "mg", "pistol", "rifle", "smg", "spread" },
            ["penetrateType"] = new() { "none", "small", "medium", "large" },
            ["impactType"] = new() { "bullet_ap", "bullet_large", "bullet_small", "grenade_bounce", "grenade_explode", "none", "projectile_dud", "rocket_explode", "shotgun" },
            ["fireType"] = new() { "2-Round Burst", "3-Round Burst", "4-Round Burst", "Full Auto", "Single Shot" },
            ["targetFolder"] = new() { "1: Single-Player", "2: Multi-Player" },
            ["playerAnimType"] = new() { "autorifle", "c4", "explosive", "mg", "none", "other", "pistol", "rocketlauncher", "smg", "sniper", "turret" }
        };

        public List<string> StickinessOptions { get; } = new()
{
    "Don't stick", "Stick to all", "Stick to ground", "Stick to ground, maintain yaw"
};
        public List<string> ExplosionTypes { get; } = new()
{
    "flashbang", "grenade", "heavy explosive", "none", "rocket", "smoke"
};

        public List<string> GuidedMissileTypes { get; } = new()
{
    "None",
    "Hellfire",
    "Javelin",
    "Sidewinder"
};
        public List<string> StanceOptions { get; } = new()
{
    "stand", "duck", "prone"
};



        private readonly string RecentFilePath = Path.Combine(
    Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
    "ManyWeapons", "recent_weapons.txt");

        private void LoadRecentWeapons()
        {
            if (File.Exists(RecentFilePath))
            {
                var lines = File.ReadAllLines(RecentFilePath);
                RecentWeapons = new ObservableCollection<string>(lines);
                OnPropertyChanged(nameof(RecentWeapons));
            }
        }

        private void SaveRecentWeapons()
        {
            Directory.CreateDirectory(Path.GetDirectoryName(RecentFilePath));
            File.WriteAllLines(RecentFilePath, RecentWeapons);
        }



        public WeaponFileViewModel()
        {

            SaveCommand = new RelayCommand(_ => SaveToFile());

            LoadRecentWeapons();

            OpenRecentCommand = new RelayCommand(path =>
            {
                if (!ConfirmDiscardChanges()) return;

                if (path is string filePath && File.Exists(filePath))
                    LoadFromFile(filePath);
            });

            Sections.Add(new SectionEntry
            {
                Title = "General Info",
                Icon = "🧾",
                View = new GeneralSectionView(this)
            });
            Sections.Add(new SectionEntry
            {
                Title = "Stats",
                Icon = "🎮",
                View = new StatsView(this)
            });
            Sections.Add(new SectionEntry
            {
                Title = "Models/Animations",
                Icon = "🧊",
                View = new ModelAnimationsView(this)
            });
            Sections.Add(new SectionEntry
            {
                Title = "Sounds",
                Icon = "🎵",
                View = new SoundView(this)
            });
            Sections.Add(new SectionEntry
            {
                Title = "Effects",
                Icon = "💥",
                View = new effectsView(this)
            });
            Sections.Add(new SectionEntry
            {
                Title = "Type-Specific",
                Icon = "🧩",
                View = new typespecificView(this)
            });

            SelectedSection = Sections.FirstOrDefault();
        }

        public ObservableCollection<SectionEntry> Sections { get; set; } = new();
        private SectionEntry _selectedSection;
        public SectionEntry SelectedSection
        {
            get => _selectedSection;
            set => SetProperty(ref _selectedSection, value);
        }

        public void LoadFromFile(string path)
        {
            HasUnsavedChanges = false;
            string content = File.ReadAllText(path);
            Data = WeaponFileParser.ParseWeaponFile(content);
            CurrentFilePath = path;
            CurrentWeaponName = Path.GetFileNameWithoutExtension(path);

            if (!RecentWeapons.Contains(path))
                RecentWeapons.Insert(0, path);
            else
            {
                RecentWeapons.Remove(path);
                RecentWeapons.Insert(0, path);
            }

            SaveRecentWeapons();

            foreach (var section in Sections)
            {
                section.View.DataContext = null;
                section.View.DataContext = this;
            }

            OnPropertyChanged(nameof(CurrentWeaponName));
        }

        private async void SaveToFile()
        {
            try
            {
                if (string.IsNullOrEmpty(CurrentFilePath)) return;

                var flatList = new List<string> { "WEAPONFILE" };
                foreach (var kvp in Data.Fields)
                {
                    flatList.Add(kvp.Key);
                    flatList.Add(kvp.Value);
                }

                var line = string.Join("\\", flatList);
                File.WriteAllText(CurrentFilePath, line);
                HasUnsavedChanges = false;

                // ✅ Success visual feedback
                SaveButtonText = "✅ Saved";
                SaveButtonBackground = Brushes.Green;

                await Task.Delay(5000);

                // Revert back
                SaveButtonText = "💾 Save";
                SaveButtonBackground = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF9800"));
            }
            catch (Exception ex)
            {
                SaveButtonText = "❌ Error";
                SaveButtonBackground = Brushes.Red;

                await Task.Delay(5000);

                SaveButtonText = "💾 Save";
                SaveButtonBackground = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF9800"));
            }
        }

        public string this[string key]
        {
            get => Data.Fields.TryGetValue(key, out var value) ? value : string.Empty;
            set
            {
                if (!Data.Fields.ContainsKey(key) || Data.Fields[key] != value)
                {
                    Data.Fields[key] = value;
                    HasUnsavedChanges = true;
                    OnPropertyChanged($"Item[{key}]");
                }
            }
        }

        public bool ConfirmDiscardChanges()
        {
            if (HasUnsavedChanges)
            {
                var dialog = new ConfirmDialog();
                dialog.Owner = Application.Current.MainWindow;

                return dialog.ShowDialog() == true;
            }

            return true;
        }


        public IEnumerable<string> GetOptions(string key)
        {
            return key switch
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


}
