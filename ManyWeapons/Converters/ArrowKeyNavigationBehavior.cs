using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace ManyWeapons.Converters
{
    public static class ArrowKeyNavigationBehavior
    {
        public static readonly DependencyProperty EnableArrowNavigationProperty =
            DependencyProperty.RegisterAttached(
                "EnableArrowNavigation",
                typeof(bool),
                typeof(ArrowKeyNavigationBehavior),
                new PropertyMetadata(false, OnEnableArrowNavigationChanged));

        public static void SetEnableArrowNavigation(DependencyObject element, bool value) =>
            element.SetValue(EnableArrowNavigationProperty, value);

        public static bool GetEnableArrowNavigation(DependencyObject element) =>
            (bool)element.GetValue(EnableArrowNavigationProperty);

        private static void OnEnableArrowNavigationChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)
        {
            if (d is Panel panel && e.NewValue is bool enabled)
            {
                if (enabled)
                    panel.PreviewKeyDown += Panel_PreviewKeyDown;
                else
                    panel.PreviewKeyDown -= Panel_PreviewKeyDown;
            }
        }

        private static void Panel_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            if (Keyboard.FocusedElement is not UIElement element)
                return;

            TraversalRequest request = e.Key switch
            {
                Key.Right or Key.Down => new TraversalRequest(FocusNavigationDirection.Next),
                Key.Left or Key.Up => new TraversalRequest(FocusNavigationDirection.Previous),
                _ => null
            };

            if (request != null)
            {
                element.MoveFocus(request);
                e.Handled = true;
            }
        }

    }
}

