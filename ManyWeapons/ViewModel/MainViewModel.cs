using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Windows.Input;
using ManyWeapons.Core;
using ManyWeapons.Grouping;
using ManyWeapons.Model;
using ManyWeapons.View;

namespace ManyWeapons.ViewModel
{
    public class MainViewModel : INotifyPropertyChanged
    {
        public ObservableCollection<SidebarTab> SidebarTabs { get; set; } = new();
        public ObservableCollection<SubTab> CurrentSubcategories { get; set; } = new();

        private EditorSection _selectedSection;
        public EditorSection SelectedSection
        {
            get => _selectedSection;
            set
            {
                _selectedSection = value;
                OnPropertyChanged(nameof(SelectedSection));
                UpdateSubcategories();
            }
        }

        private SubTab _selectedSubcategory;
        public SubTab SelectedSubcategory
        {
            get => _selectedSubcategory;
            set
            {
                _selectedSubcategory = value;
                OnPropertyChanged(nameof(SelectedSubcategory));
                OnPropertyChanged(nameof(DisplayEntries));
            }
        }

        public IEnumerable<WeaponEntry> DisplayEntries
        {
            get
            {
                if (SelectedSection == null)
                    return Enumerable.Empty<WeaponEntry>();

                if (SelectedSection.UsesSubgroups && SelectedSection.Subgroups.Any())
                {
                    return SelectedSection.Subgroups
                        .FirstOrDefault(sg => sg.Name == SelectedSubcategory?.Name)?.Entries
                        ?? Enumerable.Empty<WeaponEntry>();
                }

                // If no subgroups or section doesn’t use subgroups → combine all entries
                if (SelectedSection.Subgroups.Any())
                {
                    return SelectedSection.Subgroups.SelectMany(sg => sg.Entries);
                }

                return SelectedSection.Entries;
            }
        }

        public ICommand SelectTabCommand { get; }
        public ICommand SaveCommand { get; }
        public ICommand AddHideTagCommand { get; }

        private WeaponFile _weaponFile;
        private string _loadedFileName;
        public ObservableCollection<EditorSection> EditorSections { get; set; } = new();
        public bool IsFileLoaded => _weaponFile != null;

        public string LoadedFileName
        {
            get => _loadedFileName;
            set { _loadedFileName = value; OnPropertyChanged(nameof(LoadedFileName)); }
        }

        public MainViewModel()
        {
            SelectTabCommand = new RelayCommand(SelectTab);
            SaveCommand = new RelayCommand(SaveFile);
            AddHideTagCommand = new RelayCommand(AddHideTag);
        }

        private void UpdateSubcategories()
        {
            CurrentSubcategories.Clear();

            if (SelectedSection?.Subgroups != null && SelectedSection.Subgroups.Count > 0)
            {
                foreach (var subgroup in SelectedSection.Subgroups)
                    CurrentSubcategories.Add(new SubTab { Name = subgroup.Name });

                SelectedSubcategory = CurrentSubcategories.FirstOrDefault();
            }

            OnPropertyChanged(nameof(CurrentSubcategories));
        }

        private void SelectTab(object tabNameObj)
        {
            if (tabNameObj is string tabName)
            {
                var section = EditorSections.FirstOrDefault(s => s.Name == tabName);
                if (section != null)
                {
                    SelectedSection = section;
                    OnPropertyChanged(nameof(DisplayEntries));
                }
            }
        }

        private void AddHideTag(object sectionObj)
        {
            if (sectionObj is EditorSection section && section.Name == "Models & Hide Tags")
            {
                section.Entries.Add(new WeaponEntry("hideTag", "new_tag"));
            }
        }

        public void LoadWeaponFile(string path)
        {
            _weaponFile = new WeaponFile(path);
            LoadedFileName = Path.GetFileName(path);
            EditorSections.Clear();


            // General Section
            var generalSection = WeaponSubCatGrouping.BuildGeneralSection(_weaponFile);
            EditorSections.Add(generalSection);

            // Animation Sections (split into two)
            var animSection = WeaponSubCatGrouping.BuildAnimationSection(_weaponFile);
            EditorSections.Add(animSection);

            // Dynamically discovered groups
            var dynamicGroups = WeaponSubCatGrouping.BuildDynamicGroups(_weaponFile);
            foreach (var section in dynamicGroups)
                EditorSections.Add(section);

            var modelSection = new EditorSection { Name = "Models & Hide Tags" };

            // Add model entries from known keys
            foreach (var key in ModelKeys)
            {
                var value = _weaponFile.GetValue(key);
                if (value != null)
                    modelSection.Entries.Add(new WeaponEntry(key, value));
            }

            // Also include *any* entries with the key == "hideTag"
            foreach (var kv in _weaponFile.KeyValues.Where(kv => kv.Key == "hideTag"))
            {
                modelSection.Entries.Add(new WeaponEntry(kv.Key, kv.Value));
            }

            // Or fallback to loading from .HideTags if needed
            foreach (var tag in _weaponFile.HideTags)
            {
                if (!modelSection.Entries.Any(e => e.Key == "hideTag" && e.Value == tag))
                    modelSection.Entries.Add(new WeaponEntry("hideTag", tag));
            }

            EditorSections.Add(modelSection);

            // Sidebar setup
            SidebarTabs = new ObservableCollection<SidebarTab>(
                EditorSections.Select(s => new SidebarTab
                {
                    Name = s.Name,
                    Icon = s.Name switch
                    {
                        "General Info" => "🧾",  // Document
                        "Animations" => "🎞️", // Film
                        "Models & Hide Tags" => "🧱",  // Brick / Model
                        "Notetrack Map" => "🎵",  // Musical note
                        //"Hip Settings" => "🦵",  // Leg
                        "ADS & Hip Settings" => "🎯",  // Target
                        "Sprint Settings" => "🏃",  // Runner
                        "Melee Settings" => "🔪",  // Knife
                        "Reload Settings" => "🔄",  // Reload
                        "Recoil Settings" => "📉",  // Graph
                        "View Settings" => "👁️", // Eye
                        "Night Vision Settings" => "🌙",  // Moon
                        "Reticle Settings" => "➕",  // Cross
                        "Gun Settings" => "🔫",  // Gun
                        "Miscellaneous" => "❓",  // Question
                        _ => "✨"   // Default
                    }
                })
            );

            OnPropertyChanged(nameof(EditorSections));
            OnPropertyChanged(nameof(SidebarTabs));
            OnPropertyChanged(nameof(IsFileLoaded));
        }


        private void SaveFile(object obj)
        {
            _weaponFile.HideTags.Clear();

            foreach (var section in EditorSections)
            {
                if (section.Name == "Models & Hide Tags")
                {
                    foreach (var entry in section.Entries)
                    {
                        if (entry.Key == "hideTag")
                            _weaponFile.HideTags.Add(entry.Value);
                        else
                            _weaponFile.SetValue(entry.Key, entry.Value);
                    }
                }
                else if (section.Name == "Notetrack Map")
                {
                    _weaponFile.NotetrackMap = section.Entries
                        .Select(e => new NotetrackEntry(e.Key, e.Value))
                        .ToList();
                }
                else
                {
                    foreach (var entry in section.Entries)
                        _weaponFile.SetValue(entry.Key, entry.Value);
                }
            }

            _weaponFile.Save();
        }

        public void close()
        {
            _weaponFile = null;
            OnPropertyChanged(nameof(IsFileLoaded));
        }

        public void OnSubcategoryChanged()
        {
            OnPropertyChanged(nameof(DisplayEntries));
        }

        public event PropertyChangedEventHandler PropertyChanged;
        internal void OnPropertyChanged(string propertyName) =>
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        public class SubTab { public string Name { get; set; } }
        public class SidebarTab { public string Name { get; set; } public string Icon { get; set; } }

        public static List<string> GeneralKeys = new() { "displayName", "modeName", "playerAnimType", "weaponType", "weaponClass" };
        public static List<string> AmmoKeys = new() { "ammoName", "maxAmmo", "startAmmo", "clipSize", "damage", "minDamage", "meleeDamage" };
        public static List<string> ModelKeys = new() { "gunModel", "gunModel2", "gunModel3", "gunModel4", "gunModel5", "handModel", "worldModel", "knifeModel" };
        public static List<string> AnimationKeys = new() { "idleAnim", "fireAnim", "reloadAnim", "raiseAnim", "dropAnim", "sprintInAnim", "adsFireAnim" };
        public static List<string> SoundKeys = new() { "fireSound", "fireSoundPlayer", "reloadSound", "meleeSwipeSound", "raiseSound", "putawaySound" };
    }
}
