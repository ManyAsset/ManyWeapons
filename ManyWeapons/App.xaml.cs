using System.Threading.Tasks;
using System.Windows;
using ManyWeapons.View;

namespace ManyWeapons
{
    public partial class App : Application
    {
        private void OnStartup(object sender, StartupEventArgs e)
        {
            // splash screen on startup 

            var splash = new CustomSplashScreen();
            splash.Show();

            // run on dispatcher to keep UI thread alive
            Task.Delay(2000).ContinueWith(_ =>
            {
                // Use Application's Dispatcher, not splash
                Current.Dispatcher.Invoke(() =>
                {
                    var mainWindow = new MainWindow();
                    MainWindow = mainWindow; // CRITICAL: this keeps the app alive
                    mainWindow.Show();

                    splash.Close();
                });
            });
        }
    }
}
