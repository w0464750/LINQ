   M S B A M L   `   `   `  ����J  FAssignment3LINQ, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Assignment3LINQ.PagesAssignment3LINQ.Pages  5      $    Assignment3LINQ.Pages.Customer   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:Assignment3LINQ.Pages     5        N� Title$  Customer��5	       � 	Resources 5         customerViewSource  customerText �� 
TargetType �� Property �� Value��%�   &	        &	      �� 5   
   6   �� 5   
   " ��6%   .�5      ��  � ��
 ��  �6+   �� 5       � ��$
 Bold"�6+   �� 5       � ��$ 20(�6)   5      5      .��5      �� .+�5   
   �� $��	Customers��6   #��[ 6%   6M   �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5      �� $��Search:��6   �� 5      -   5         ��Name$ 	txtSearch��5      $	��300��6)   �� 5      -   5         ��Name$ Search��5      $��Search��6:   $	��100��6K   5      �� 5   
   -   5         ��Name$ customerListView��5      $��Visible=�6-   $
��True��6`   $	��350��6�   ��5      �� 5      .R�5      �� $ 
Horizontal=�6   .+�5!      �� $ Vertical=�6!   .+�5"      �� $ 
Horizontal=�6)   .+�5#   "   �� ��6,   �� *
LastName+�� 5$   "   $��, ��6,   �� 5%   "   ��6,   �� *	FirstName+5&      �� 5'      ��6%   �� *City+�� 5(      ��6$   �� *	Country+�� 5)      ��6$   �� *Email+5*      �� 5-      .+�5.      9� .��5/   "   �� ��6+   �� *
Invoices+��50   &   �� 51   *   	 �� DataType$	 local:Invoices��67   .R�52   .   �� $ 
Horizontal=�69   .+�53   2   �� $��Order Date: ��6<   �� 54   2   ��6<   �� *InvoiceDate+
 �� StringFormat$
 {0:yyyy-MM-dd}���� 55   2   $��	 Total: $��6<   �� 56   2   ��6<   �� *Total+�� 57   2   $�� Quantity: ��6<   �� 58   2   ��6<   �� *InvoiceLines.Count+59   /   5:   +   5<   #   5=      5>      5?      5@      5B      5C      5D      