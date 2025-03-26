using XmlDashboard.Services;
using System.Windows.Input;
using XmlDashboard.Commands;

namespace XmlDashboard.ViewModels
{
    public class MainViewModel : ViewModelBase
    {
        private readonly INavigationService _navigationService;

        public ICommand NavigateHomeCommand { get; }
        public ICommand NavigateUsersCommand { get; }

        public MainViewModel(INavigationService navigationService)
        {
            _navigationService = navigationService;

            NavigateHomeCommand = new RelayCommand(NavigateToHome);
            NavigateUsersCommand = new RelayCommand(NavigateToUsers);

            // Navigation par défaut
            NavigateToHome();
        }

        private void NavigateToHome()
        {
            _navigationService.NavigateTo<HomeViewModel>();
        }

        private void NavigateToUsers()
        {
            _navigationService.NavigateTo<UsersViewModel>();
        }
    }
}