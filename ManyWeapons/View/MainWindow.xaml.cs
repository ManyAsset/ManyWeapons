using System.Windows;
using System.Windows.Controls.Primitives;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;
using ManyWeapons.View;
using ManyWeapons.ViewModel;

namespace ManyWeapons
{
    public partial class MainWindow : Window
    {
        public WeaponFileViewModel ViewModel { get; set; }

        // lets use windows api to create windows resizing 
        private const int HTLEFT = 10;
        private const int HTRIGHT = 11;
        private const int HTTOP = 12;
        private const int HTTOPLEFT = 13;
        private const int HTTOPRIGHT = 14;
        private const int HTBOTTOM = 15;
        private const int HTBOTTOMLEFT = 16;
        private const int HTBOTTOMRIGHT = 17;
        private const int HTCLIENT = 1;
        private const int WM_NCHITTEST = 0x0084;

        private const int RESIZE_BORDER = 6; // thickness in pixels


        public MainWindow()
        {
            InitializeComponent();
            ViewModel = new WeaponFileViewModel();
            DataContext = ViewModel;

            // Allow drag and drop
            this.AllowDrop = true;
            this.Drop += FileDropHandler;

            SourceInitialized += (_, __) =>
            {
                var handle = new WindowInteropHelper(this).Handle;
                HwndSource.FromHwnd(handle).AddHook(WindowProc);
            };
        }

        //private void FileDropHandler(object sender, DragEventArgs e)
        //{
        //    if (e.Data.GetDataPresent(DataFormats.FileDrop))
        //    {
        //        var files = (string[])e.Data.GetData(DataFormats.FileDrop);
        //        if (files.Length > 0)
        //        {
        //            ViewModel.LoadFromFile(files[0]);
        //        }
        //    }
        //}

        private void TitleBar_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }

        private void OpenChangelog_Click(object sender, RoutedEventArgs e)
        {
            var changelogWindow = new ChangelogWindow();
            changelogWindow.Owner = this;
            changelogWindow.ShowDialog();
        }

        private void TextBox_KeyDown(object sender, KeyEventArgs e)
        {
            var textBox = sender as UIElement;
            if (textBox == null)
                return;

            switch (e.Key)
            {
                case Key.Right:
                    textBox.MoveFocus(new TraversalRequest(FocusNavigationDirection.Next));
                    e.Handled = true;
                    break;

                case Key.Left:
                    textBox.MoveFocus(new TraversalRequest(FocusNavigationDirection.Previous));
                    e.Handled = true;
                    break;

                case Key.Down:
                    textBox.MoveFocus(new TraversalRequest(FocusNavigationDirection.Down));
                    e.Handled = true;
                    break;

                case Key.Up:
                    textBox.MoveFocus(new TraversalRequest(FocusNavigationDirection.Up));
                    e.Handled = true;
                    break;
            }
        }

        private void Minimize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void Maximize_Click(object sender, RoutedEventArgs e)
        {
            WindowState = (WindowState == WindowState.Maximized) ? WindowState.Normal : WindowState.Maximized;
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        protected override void OnContentRendered(EventArgs e)
        {
            base.OnContentRendered(e);

        }

        private void Resize_Thumb_DragDelta(object sender, DragDeltaEventArgs e)
        {
            double newWidth = Width + e.HorizontalChange;
            double newHeight = Height + e.VerticalChange;

            if (newWidth > MinWidth)
                Width = newWidth;
            if (newHeight > MinHeight)
                Height = newHeight;
        }

        private IntPtr WindowProc(IntPtr hwnd, int msg, IntPtr wParam, IntPtr lParam, ref bool handled)
        {
            if (msg == WM_NCHITTEST)
            {
                handled = true;

                // Get mouse position relative to window
                Point screenPoint = new Point((lParam.ToInt32() & 0xFFFF), (lParam.ToInt32() >> 16));
                Point windowPoint = this.PointFromScreen(screenPoint);

                double width = this.ActualWidth;
                double height = this.ActualHeight;

                // Edge detection first
                bool left = windowPoint.X >= 0 && windowPoint.X < RESIZE_BORDER;
                bool right = windowPoint.X <= width && windowPoint.X > width - RESIZE_BORDER;
                bool top = windowPoint.Y >= 0 && windowPoint.Y < RESIZE_BORDER;
                bool bottom = windowPoint.Y <= height && windowPoint.Y > height - RESIZE_BORDER;

                if (top && left) return new IntPtr(HTTOPLEFT);
                if (top && right) return new IntPtr(HTTOPRIGHT);
                if (bottom && left) return new IntPtr(HTBOTTOMLEFT);
                if (bottom && right) return new IntPtr(HTBOTTOMRIGHT);
                if (left) return new IntPtr(HTLEFT);
                if (right) return new IntPtr(HTRIGHT);
                if (top) return new IntPtr(HTTOP);
                if (bottom) return new IntPtr(HTBOTTOM);

                // Fallback = regular window area (allows clicking/typing/etc)
                return new IntPtr(HTCLIENT);
            }

            return IntPtr.Zero;
        }

        private void FileDropHandler(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop))
            {
                var files = (string[])e.Data.GetData(DataFormats.FileDrop);
                if (files.Length > 0)
                {
                    // ✅ Confirm before loading
                    if (!ViewModel.HasUnsavedChanges || ViewModel.ConfirmDiscardChanges())
                    {
                        ViewModel.LoadFromFile(files[0]);
                    }
                }
            }
        }
    }
}
