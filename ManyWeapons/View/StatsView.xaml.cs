using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using ManyWeapons.ViewModel;

namespace ManyWeapons.View
{
    /// <summary>
    /// Interaction logic for StatsView.xaml
    /// </summary>
    public partial class StatsView : UserControl
    {
        public StatsView(WeaponFileViewModel viewModel)
        {
            InitializeComponent();
            DataContext = viewModel;
            this.PreviewKeyDown += HandleArrowKeyFocusNavigation;
        }


        private void HandleArrowKeyFocusNavigation(object sender, KeyEventArgs e)
        {
            if (Keyboard.FocusedElement is not FrameworkElement currentElement)
                return;

            FocusNavigationDirection? direction = e.Key switch
            {
                Key.Left => FocusNavigationDirection.Left,
                Key.Right => FocusNavigationDirection.Right,
                Key.Up => FocusNavigationDirection.Up,
                Key.Down => FocusNavigationDirection.Down,
                _ => null
            };

            if (direction is null)
                return;

            var request = new TraversalRequest(direction.Value);
            var moved = currentElement.MoveFocus(request);

            // Mark event handled if movement was successful
            if (moved)
                e.Handled = true;
        }

    }




}
