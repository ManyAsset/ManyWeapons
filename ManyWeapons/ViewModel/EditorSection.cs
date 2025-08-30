using System.Collections.ObjectModel;
using ManyWeapons.Model;

public class EditorSection
{
    public string Name { get; set; }
    public ObservableCollection<WeaponEntry> Entries { get; set; } = new();
    public ObservableCollection<EditorSubGroup> Subgroups { get; set; } = new();

    public bool HasSubgroups => Subgroups.Any();
    public bool UsesSubgroups { get; set; } = false;  // ← new property
}

public class EditorSubGroup
{
    public string Name { get; set; }
    public ObservableCollection<WeaponEntry> Entries { get; set; } = new();
}
