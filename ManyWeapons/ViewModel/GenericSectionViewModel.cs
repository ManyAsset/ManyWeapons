using System.Collections.ObjectModel;
using System.Linq;
using ManyWeapons.Model;

namespace ManyWeapons.ViewModel
{
    public class GenericSectionViewModel
    {
        public EditorSection Section { get; }
        public string SelectedSubgroupName { get; }

        public GenericSectionViewModel(EditorSection section, string selectedSubgroupName)
        {
            Section = section;
            SelectedSubgroupName = selectedSubgroupName;
        }

        public IEnumerable<EditorSubGroup> DisplayGroups
        {
            get
            {
                if (Section.Subgroups.Any())
                {
                    return Section.Subgroups
                        .Where(sg => sg.Name == SelectedSubgroupName)
                        .Select(sg => new EditorSubGroup
                        {
                            Name = sg.Name,
                            Entries = new ObservableCollection<WeaponEntry>(
                                sg.Entries.Where(e => !e.Key.StartsWith("_header_"))
                            )
                        });
                }
                else
                {
                    return new[]
                    {
                    new EditorSubGroup
                    {
                        Name = Section.Name,
                        Entries = new ObservableCollection<WeaponEntry>(
                            Section.Entries.Where(e => !e.Key.StartsWith("_header_"))
                        )
                    }
                };
                }
            }
        }
    }
}
