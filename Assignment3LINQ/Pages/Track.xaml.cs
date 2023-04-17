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
    public partial class Track : Page
    {

        ChinookContext _context = new ChinookContext();
        CollectionViewSource trackViewSource = new CollectionViewSource();
        public Track()
        {
            InitializeComponent();
            trackViewSource = (CollectionViewSource)FindResource(nameof(trackViewSource));

            _context.Tracks.Load();
            trackViewSource.Source = _context.Tracks.Local.ToObservableCollection();
        }

        private void OnSearchClicked(object sender, RoutedEventArgs e)
        {
            string searchTerm = searchBox.Text.ToLower();

            var query = from track in _context.Tracks.Local
                        where track.Name.IndexOf(searchTerm, StringComparison.OrdinalIgnoreCase) >= 0
                        select track;

            trackViewSource.Source = query.ToList();
        }


    }
}
