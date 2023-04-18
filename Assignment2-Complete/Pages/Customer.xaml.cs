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
    public partial class Customer : Page
    {
        ChinookContext _context = new ChinookContext();
        CollectionViewSource customerViewSource = new CollectionViewSource();
        
        public Customer()
        {
            InitializeComponent();
            customerViewSource = (CollectionViewSource)FindResource(nameof(customerViewSource));

            _context.Customers.Load();
            _context.Invoices.Load();
            _context.InvoiceLines.Load();

            customerViewSource.Source = _context.Customers.Local.ToObservableCollection();
        }

        private void Search_Click(object sender, RoutedEventArgs e)
        {
            var query = from customer in _context.Customers
                        where customer.LastName.Contains(txtSearch.Text)
                        select customer;

            customerListView.ItemsSource = query.ToList();

        }
    }
}
