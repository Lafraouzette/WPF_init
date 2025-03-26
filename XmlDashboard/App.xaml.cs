using System;
using System.Windows;
using Microsoft.Extensions.DependencyInjection;
using XmlDashboard.Services;
using XmlDashboard.ViewModels;

namespace XmlDashboard
{
    public partial class App : Application
    {
        private readonly ServiceProvider _serviceProvider;

        public App()
        {
            var services = new ServiceCollection();
            ConfigureServices(services);
            _serviceProvider = services.BuildServiceProvider();
        }

        private void ConfigureServices(IServiceCollection services)
        {
            services.AddSingleton<MainWindow>();
            services.AddSingleton<MainViewModel>();

            // Views et ViewModels
            services.AddTransient<HomeViewModel>();
            services.AddTransient<UsersViewModel>();

            // Services
            services.AddSingleton<INavigationService>(provider =>
            {
                var mainWindow = provider.GetRequiredService<MainWindow>();
                return new NavigationService(mainWindow.MainFrame, provider);
            });
        }

        protected override void OnStartup(StartupEventArgs e)
        {
            var mainWindow = _serviceProvider.GetRequiredService<MainWindow>();
            mainWindow.DataContext = _serviceProvider.GetRequiredService<MainViewModel>();
            mainWindow.Show();

            base.OnStartup(e);
        }
    }
}