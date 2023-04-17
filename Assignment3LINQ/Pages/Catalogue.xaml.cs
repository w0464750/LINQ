using Assignment3LINQ.Models.Generated;
using Microsoft.EntityFrameworkCore;
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

namespace Assignment3LINQ.Pages
{
    public partial class Catalogue : Page
    {
        ChinookContext _context = new ChinookContext();
        CollectionViewSource catalogueViewSource = new CollectionViewSource();
        
        public Catalogue()
        {
            InitializeComponent();
            catalogueViewSource = (CollectionViewSource)FindResource(nameof(catalogueViewSource));

            _context.Artists.Load();
            _context.Albums.Load();
            _context.Tracks.Load();

            catalogueViewSource.Source = _context.Artists.Local.ToObservableCollection();
        }

        private void Search_Click(object sender, RoutedEventArgs e)
        {
            var query = from artist in _context.Artists
                        where artist.Name.Contains(txtSearch.Text)
                        group artist by artist.Name.ToUpper().Substring(0,1) into artistGroup
                        select new
                        {
                            Index = artistGroup.Key, // First letter
                            CatCount = artistGroup.Count().ToString(), // How many for each group
                            artist = artistGroup.ToList() // artist collection
                        };


            artistsListView.ItemsSource = query.ToList();
        }
    }
}
