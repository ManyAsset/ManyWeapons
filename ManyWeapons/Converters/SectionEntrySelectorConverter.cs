using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ManyWeapons.Model;
using System.Windows.Data;

namespace ManyWeapons.Converters
{
    public class SectionEntrySelectorConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            var entries = values[0] as IEnumerable<WeaponEntry>;
            var subgroups = values[1] as IEnumerable<EditorSubGroup>;

            if (subgroups != null && subgroups.Any())
                return subgroups;

            return entries ?? Enumerable.Empty<WeaponEntry>();
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
