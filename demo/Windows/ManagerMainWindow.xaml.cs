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
    /// Логика взаимодействия для ManagerMainWindow.xaml
    /// </summary>
    public partial class ManagerMainWindow : Window
    {
        public ManagerMainWindow()
        {
            InitializeComponent();
        }

        private void ButtonBackMainWindow_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            this.Close();
            mainWindow.ShowDialog();
        }

        private void ButtonCreateNewOrder_Click(object sender, RoutedEventArgs e)
        {
            CheckoutWindow checkoutWindow = new CheckoutWindow();
            SystemContext.whereIsWas = "ManagerMainWindow";
            this.Close();
            checkoutWindow.ShowDialog();
        }

        private void ButtonEditOrder_Click(object sender, RoutedEventArgs e)
        {
            EditOrderWindow editOrderWindow = new EditOrderWindow();
            SystemContext.whereIsWas = "ManagerMainWindow";
            this.Close();
            editOrderWindow.ShowDialog();
        }
    }
}
