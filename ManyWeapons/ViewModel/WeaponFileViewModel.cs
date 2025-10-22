using ManyWeapons.Base;
using ManyWeapons.View;
using System.Collections.ObjectModel;


namespace ManyWeapons.ViewModel
{
    using ManyWeapons.Model;
    using ManyWeapons.Relay;
    using System.IO;
    using System.Reflection;
    using System.Windows;
    using System.Windows.Controls;
    using System.Windows.Input;
    using System.Windows.Media;

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



        private void TextBox_KeyDown(object sender, KeyEventArgs e)
        {
            var textBox = sender as UIElement;
            if (textBox == null)
                return;

            switch (e.Key)
            {
                case Key.Right:
                    textBox.MoveFocus(new TraversalRequest(FocusNavigationDirection.Next));
                    e.Handled = true;
                    break;

                case Key.Left:
                    textBox.MoveFocus(new TraversalRequest(FocusNavigationDirection.Previous));
                    e.Handled = true;
                    break;

                case Key.Down:
                    textBox.MoveFocus(new TraversalRequest(FocusNavigationDirection.Down));
                    e.Handled = true;
                    break;

                case Key.Up:
                    textBox.MoveFocus(new TraversalRequest(FocusNavigationDirection.Up));
                    e.Handled = true;
                    break;
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

        //private async void SaveToFile()
        //{
        //    try
        //    {
        //        if (string.IsNullOrEmpty(CurrentFilePath)) return;

        //        var flatList = new List<string> { "WEAPONFILE" };
        //        foreach (var kvp in Data.Fields)
        //        {
        //            flatList.Add(kvp.Key);
        //            flatList.Add(kvp.Value);
        //        }

        //        var line = string.Join("\\", flatList);
        //        File.WriteAllText(CurrentFilePath, line);
        //        HasUnsavedChanges = false;

        //        // ✅ Success visual feedback
        //        SaveButtonText = "✅ Saved";
        //        SaveButtonBackground = Brushes.Green;

        //        await Task.Delay(5000);

        //        // Revert back
        //        SaveButtonText = "💾 Save";
        //        SaveButtonBackground = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF9800"));
        //    }
        //    catch (Exception ex)
        //    {
        //        SaveButtonText = "❌ Error";
        //        SaveButtonBackground = Brushes.Red;

        //        await Task.Delay(5000);

        //        SaveButtonText = "💾 Save";
        //        SaveButtonBackground = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF9800"));
        //    }
        //}

        //public async void SaveToFile()
        //{
        //    try
        //    {

        //        // ✅ Manually update bindings of last focused element
        //        if (FocusManager.GetFocusedElement(FocusManager.GetFocusScope(Application.Current.MainWindow)) is FrameworkElement focusedElement)
        //        {
        //            // Cycle focus to ensure update
        //            focusedElement.MoveFocus(new TraversalRequest(FocusNavigationDirection.Next));

        //            // Try TextBox.Text
        //            var textBinding = focusedElement.GetBindingExpression(TextBox.TextProperty);
        //            textBinding?.UpdateSource();

        //            // Try ComboBox.SelectedValue
        //            var selectedBinding = focusedElement.GetBindingExpression(ComboBox.SelectedValueProperty);
        //            selectedBinding?.UpdateSource();

        //            // Try CheckBox.IsChecked
        //            var checkBinding = focusedElement.GetBindingExpression(CheckBox.IsCheckedProperty);
        //            checkBinding?.UpdateSource();
        //        }

        //        if (string.IsNullOrEmpty(CurrentFilePath)) return;

        //        // 🔽 Save logic unchanged
        //        var flatList = new List<string> { "WEAPONFILE" };
        //        foreach (var kvp in Data.Fields)
        //        {
        //            flatList.Add(kvp.Key);
        //            flatList.Add(kvp.Value);
        //        }

        //        var line = string.Join("\\", flatList);
        //        File.WriteAllText(CurrentFilePath, line);
        //        HasUnsavedChanges = false;

        //        SaveButtonText = "✅ Saved";
        //        SaveButtonBackground = Brushes.Green;
        //        await Task.Delay(5000);

        //        SaveButtonText = "💾 Save";
        //        SaveButtonBackground = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF9800"));
        //    }
        //    catch
        //    {
        //        SaveButtonText = "❌ Error";
        //        SaveButtonBackground = Brushes.Red;
        //        await Task.Delay(5000);

        //        SaveButtonText = "💾 Save";
        //        SaveButtonBackground = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF9800"));
        //    }
        //}

        public async void SaveToFile()
        {
            try
            {
                // ✅ Ensure focus is updated before saving
                if (Keyboard.FocusedElement is FrameworkElement focused)
                {
                    focused.MoveFocus(new TraversalRequest(FocusNavigationDirection.Next));
                    focused.MoveFocus(new TraversalRequest(FocusNavigationDirection.Previous));
                }

                if (FocusManager.GetFocusedElement(FocusManager.GetFocusScope(Application.Current.MainWindow)) is FrameworkElement focusedElement)
                {
                    focusedElement.GetBindingExpression(TextBox.TextProperty)?.UpdateSource();
                    focusedElement.GetBindingExpression(ComboBox.SelectedValueProperty)?.UpdateSource();
                    focusedElement.GetBindingExpression(CheckBox.IsCheckedProperty)?.UpdateSource();
                }

                if (string.IsNullOrEmpty(CurrentFilePath))
                    return;

                // ✅ Handle normal fields (everything except multiline ones)
                var flatList = new List<string> { "WEAPONFILE" };
                foreach (var kvp in Data.Fields)
                {
                    if (kvp.Key == "notetrackSoundMap" || kvp.Key == "hideTags")
                        continue; // skip multiline sections, handled later

                    flatList.Add(kvp.Key);
                    flatList.Add(kvp.Value);
                }

                var flatContent = string.Join("\\", flatList);
                var finalContent = flatContent;

                // ✅ Append multiline sections
                var specialMultilineKeys = new[] { "hideTags", "notetrackSoundMap" };

                foreach (var key in specialMultilineKeys)
                {
                    if (Data.Fields.TryGetValue(key, out var multilineValue) && !string.IsNullOrWhiteSpace(multilineValue))
                    {
                        multilineValue = multilineValue.Replace("\\", "").Trim();
                        multilineValue = multilineValue.Replace("\r\n", "\n").Replace("\r", "\n").Trim();

                        var lines = multilineValue
                            .Split('\n')
                            .Where(l => !string.IsNullOrWhiteSpace(l))
                            .Select(l => l.Trim());

                        finalContent += $"\\{key}\\{string.Join(Environment.NewLine, lines)}";
                    }
                }

                File.WriteAllText(CurrentFilePath, finalContent);

                // ✅ Write to file
                File.WriteAllText(CurrentFilePath, finalContent);
                HasUnsavedChanges = false;

                // ✅ Success feedback
                SaveButtonText = "✅ Saved";
                SaveButtonBackground = Brushes.Green;
                await Task.Delay(5000);
                SaveButtonText = "💾 Save";
                SaveButtonBackground = new SolidColorBrush((Color)ColorConverter.ConvertFromString("#FF9800"));
            }
            catch
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
