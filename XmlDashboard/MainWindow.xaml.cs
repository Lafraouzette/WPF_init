using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace XmlDashboard
{
    public partial class MainWindow : Window
    {
        private readonly Frame _mainFrame;

        public MainWindow()
        {
            InitializeComponent();
            _mainFrame = new Frame();
        }
    }
}