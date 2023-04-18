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

namespace Assignment3LINQ
{
    public partial class MainWindow : Window
    {
        private Page homePage;
        private Page artistPage;
        private Page albumPage;
        private Page trackPage;
        private Page cataloguePage;
        private Page customerPage;

        public MainWindow()
        {
            InitializeComponent();
            homePage = new Pages.Home();
            artistPage = new Pages.Artist();
            albumPage = new Pages.Album();
            trackPage = new Pages.Track();
            cataloguePage = new Pages.Catalogue();
            customerPage = new Pages.Customer();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            mainFrame.NavigationService.Navigate(homePage);
        }
        private void HomeButton_Click(object sender, RoutedEventArgs e)
        {
            mainFrame.NavigationService.Navigate(homePage);
        }

        private void ArtistButton_Click(object sender, RoutedEventArgs e)
        {
            mainFrame.NavigationService.Navigate(artistPage);
        }

        private void AlbumButton_Click(object sender, RoutedEventArgs e)
        {
            mainFrame.NavigationService.Navigate(albumPage);
        }

        private void TrackButton_Click(object sender, RoutedEventArgs e)
        {
            mainFrame.NavigationService.Navigate(trackPage);
        }
        
        private void CatalogueButton_Click(object sender, RoutedEventArgs e)
        {
            mainFrame.NavigationService.Navigate(cataloguePage);
        }

        private void CustomerButton_Click(object sender, RoutedEventArgs e)
        {
            mainFrame.NavigationService.Navigate(customerPage);
        }
    }
}
