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
    public partial class Artist : Page
    {
        ChinookContext _context = new ChinookContext();
        CollectionViewSource artistViewSource = new CollectionViewSource();
        public Artist()
        {
            InitializeComponent();
            artistViewSource = (CollectionViewSource)FindResource(nameof(artistViewSource));

            _context.Artists.Load();
            artistViewSource.Source = _context.Artists.Local.ToObservableCollection();
        }

        private void OnSearchClicked(object sender, RoutedEventArgs e)
        {
            string searchTerm = searchBox.Text.ToLower();
            
            var query = from artist in _context.Artists.Local
                        where artist.Name.IndexOf(searchTerm, StringComparison.OrdinalIgnoreCase) >= 0
                        select artist;

            artistViewSource.Source = query.ToList();
        }
    }
}
