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
    public partial class Album : Page
    {
        ChinookContext _context = new ChinookContext();
        CollectionViewSource albumViewSource = new CollectionViewSource();
        
        public Album()
        {
            InitializeComponent();
            albumViewSource = (CollectionViewSource)FindResource(nameof(albumViewSource));

            _context.Albums.Load();
            albumViewSource.Source = _context.Albums.Local.ToObservableCollection();
        }

        private void OnSearchClicked(object sender, RoutedEventArgs e)
        {
            string searchTerm = searchBox.Text.ToLower();
            
            var query = from album in _context.Albums.Local
                        where album.Title.IndexOf(searchTerm, StringComparison.OrdinalIgnoreCase) >= 0
                        select album;

            albumViewSource.Source = query.ToList();
        }
    }
}
