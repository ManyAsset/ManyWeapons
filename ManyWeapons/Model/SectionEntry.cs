using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace ManyWeapons.Model
{
    public class SectionEntry
    {
        public string Title { get; set; }
        public string Icon { get; set; }
        public UserControl View { get; set; }
    }
}
