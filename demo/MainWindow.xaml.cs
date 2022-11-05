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
using System.Windows.Navigation;
using System.Windows.Shapes;
using demo.Windows;

namespace demo
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            LoginTB.Text = "o@outlook.com";
            PasswordPB.Password = "2L6KZG";
        }

        private void GuestEnter_Click(object sender, RoutedEventArgs e)
        {
            using (var db = new OOO_ParfumerEntities())
            {
                SystemContext.User_ = (from u in db.User_ where u.Login_ == "Guest" select u).FirstOrDefault();
            }
            ClientMainWindow clientMainWindow = new ClientMainWindow();
            this.Close();
            clientMainWindow.ShowDialog();
        }

        private void EnterButton_Click(object sender, RoutedEventArgs e)
        {
            if (LoginTB.Text == "")
            {
                MessageBox.Show("Введите логин");
                return;
            }
            if (PasswordPB.Password == "")
            {
                MessageBox.Show("Введите пароль");
                return;
            }
            using (var db = new OOO_ParfumerEntities())
            {
                User_ user_ = (from u in db.User_ where u.Login_ == LoginTB.Text select u).FirstOrDefault();
                if (user_ == null)
                {
                    MessageBox.Show("Данного пользователя не существует в базе данных");
                    return;
                }
                if (user_.Password_ != PasswordPB.Password)
                {
                    MessageBox.Show("Неправильно введен пароль");
                    return;
                }
                SystemContext.User_ = user_;
                if (user_.Role_ == "Администратор")
                {
                    AdminMainWindow adminMainWindow = new AdminMainWindow();
                    this.Close();
                    adminMainWindow.ShowDialog();
                }
                if (user_.Role_ == "Менеджер")
                {
                    ManagerMainWindow managerMainWindow = new ManagerMainWindow();
                    this.Close();
                    managerMainWindow.ShowDialog();
                }
                if (user_.Role_ == "Клиент")
                {
                    ClientMainWindow clientMainWindow = new ClientMainWindow();
                    this.Close();
                    clientMainWindow.ShowDialog();
                }
            }
        }
    }
}
