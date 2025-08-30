using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using ManyWeapons.Model;
using ManyWeapons.View;
using ManyWeapons.ViewModel;

namespace ManyWeapons
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            this.DataContext = new MainViewModel();
        }

        private void Window_DragOver(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                e.Effects = DragDropEffects.Copy;
            }
            else
            {
                e.Effects = DragDropEffects.None;
            }

            e.Handled = true;
        }

        private void SubcategoryTab_Changed(object sender, SelectionChangedEventArgs e)
        {
            if (DataContext is MainViewModel vm && vm.SelectedSection != null && vm.SelectedSubcategory != null)
            {
                vm.OnSubcategoryChanged();
            }
        }



        private void Window_Drop(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                var files = (string[])e.Data.GetData(DataFormats.FileDrop);
                if (files.Length > 0)
                {
                    var vm = DataContext as MainViewModel;
                    vm?.LoadWeaponFile(files[0]);
                }
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            var vm = DataContext as MainViewModel;
            vm.close();
        }
    }


}