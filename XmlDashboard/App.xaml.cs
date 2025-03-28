using System;
using System.Text;
using System.Windows;
using Microsoft.Extensions.DependencyInjection;
using XmlDashboard.Services;
using XmlDashboard.ViewModels;

namespace XmlDashboard
{
    public partial class App : Application
    {
        private readonly ServiceProvider _serviceProvider; /*outils pour gerer DI*/ 

        public App() /*Constucture initialise le ServiceProvider*/
        {
            var services = new ServiceCollection();
            ConfigureServices(services);
            _serviceProvider = services.BuildServiceProvider();
        }

        private void ConfigureServices(IServiceCollection services) /*Ajoute les depandances (services , vues ... ) au container (Collection)*/
        {
            services.AddSingleton<MainWindow>(); /*Ajoute une instance unique (Singleton) de MainWindow au container*/
            services.AddSingleton<MainViewModel>();

            // Views et ViewModels
            services.AddTransient<HomeViewModel>(); /* Une nouvelle instance est créée à chaque fois qu’elle est demandée*/
            services.AddTransient<UsersViewModel>();
            /*Il existe qussi QddScoped Une nouvelle instance est créée à chaque requête*/
            // Services
            //Exemple : AddSingleton<IMessageService, MessageService>() , ajouter MessageService  qui est une implementation de IMessageService au container 

            services.AddSingleton<INavigationService>(provider => /*Ajoute une instance unique (Singleton) de NavigationService au container,
                                                                   On a utiliser Provaider car NavigationService a besoins de MainWindow */
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