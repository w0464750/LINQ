   M S B A M L   `   `   `  ����J  FAssignment3LINQ, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Assignment3LINQ.PagesAssignment3LINQ.Pages  5      "    Assignment3LINQ.Pages.Artist   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:Assignment3LINQ.Pages     5        N� Title$  Artist��5	       � 	Resources 5
         artistViewSource  
artistText �� 
TargetType �� Property �� Value��%�   &	        &	      �� 5   
   6   �� 5   
   " ��6#   .�5      ��  � ��
 �  ��6+   �� 5       � ��$
 Bold"�6+   �� 5       � ��$ 20(�6)   5      5      .��5      �� .+�5   
   �� $��Chinook Artists��6   #��[ 6+   6Q   �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5      �� -   5         ��Name$ 	searchBox��5      $	��200��6)   $��10q�65   �� 5      -   5        $��Search��5      $��10q�6&   62   5      &   System.Windows.Controls.DataGrid  5   
   $	��420��6   !   EnableColumnVirtualization$
 True��5         AutoGenerateColumns$ False��6-   "	   VerticalScrollBarVisibility$
	 Auto=�6I   ��5       �� 
 �� Source#
 [     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 	Artist ID��6B      Width5  /System.Windows.Controls.DataGridLengthConverter$ SizeToHeader 6U      
IsReadOnly$
 True��6j   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *
ArtistId+6j     5      $ Artist Name��6>   $ * 6S    6%   �� *Name+6S   5      5       5!      