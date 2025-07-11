using System;
using System.Globalization;
using System.Windows.Data;
using ManyWeapons.ViewModel;

namespace ManyWeapons.Converters
{
    public class EnumBindingConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if (values.Length != 2 || values[0] is not string key || values[1] is not WeaponFileViewModel vm)
                return null;

            return vm.EnumOptions.TryGetValue(key, out var list) ? list : null;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
            => throw new NotImplementedException();
    }
}
