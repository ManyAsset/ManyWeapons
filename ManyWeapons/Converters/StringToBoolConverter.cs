using System;
using System.Globalization;
using System.Windows.Data;

namespace ManyWeapons.Converters
{
    public class StringToBoolConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return bool.TryParse(value?.ToString(), out var result) && result;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return (bool)value ? "true" : "false";
        }
    }
}
