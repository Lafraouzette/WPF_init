using System;
using System.Windows.Controls;
using XmlDashboard.ViewModels;

namespace XmlDashboard.Services
{
    public class NavigationService : INavigationService
    {
        private readonly Frame _frame;
        private readonly IServiceProvider _serviceProvider;

        public NavigationService(Frame frame, IServiceProvider serviceProvider)
        {
            _frame = frame;
            _serviceProvider = serviceProvider;
        }

        public void NavigateTo<T>() where T : class
        {
            NavigateTo(typeof(T));
        }

        public void NavigateTo(Type viewModelType)
        {
            var viewType = GetViewType(viewModelType);
            var view = (Page)Activator.CreateInstance(viewType);

            // Injecter le ViewModel correspondant
            var viewModel = _serviceProvider.GetService(viewModelType);
            view.DataContext = viewModel;

            _frame.Navigate(view);
        }

        private Type GetViewType(Type viewModelType)
        {
            var viewName = viewModelType.FullName.Replace("ViewModels", "Views").Replace("ViewModel", "View");
            return Type.GetType(viewName) ??
                   throw new InvalidOperationException($"View not found for {viewModelType}");
        }
    }
}