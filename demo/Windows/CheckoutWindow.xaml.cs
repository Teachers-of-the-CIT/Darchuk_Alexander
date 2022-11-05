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
using System.Windows.Shapes;

namespace demo.Windows
{
    /// <summary>
    /// Логика взаимодействия для CheckoutWindow.xaml
    /// </summary>
    public partial class CheckoutWindow : Window
    {
        public CheckoutWindow()
        {
            InitializeComponent();
        }

        private void ButtonBackWindow_Click(object sender, RoutedEventArgs e)
        {
            if (SystemContext.whereIsWas == "AdminMainWindow")
            {
                AdminMainWindow adminMainWindow = new AdminMainWindow();
                this.Close();
                adminMainWindow.ShowDialog();
            }
            if (SystemContext.whereIsWas == "ClientMainWindow")
            {
                ClientMainWindow clientMainWindow = new ClientMainWindow();
                this.Close();
                clientMainWindow.ShowDialog();
            }
            if (SystemContext.whereIsWas == "ManagerMainWindow")
            {
                ManagerMainWindow managerMainWindow = new ManagerMainWindow();
                this.Close();
                managerMainWindow.ShowDialog();
            }
        }
    }
}
