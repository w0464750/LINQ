   M S B A M L   `   `   `  ����J  FAssignment3LINQ, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Assignment3LINQ.PagesAssignment3LINQ.Pages  5      %    Assignment3LINQ.Pages.Catalogue   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      5local#clr-namespace:Assignment3LINQ.Pages     5        N� Title$  	Catalogue��5	       � 	Resources 5         catalogueViewSource  catalogueText �� 
TargetType �� Property �� Value��%�   &	        &	      �� 5   
   6   �� 5   
   " ��6&   .�5      ��  � ��
 ��  �6+   �� 5       � ��$
 Bold"�6+   �� 5       � ��$ 20(�6)   5      5      .��5      �� .+�5   
   �� $��Music Catalogue��6   #��[ 6+   6T   �� 5   
    �� Orientation$ 
Horizontal=�6   .+�5      �� $��Search:��6   �� 5      -   5         ��Name$ 	txtSearch��5      $	��300��6)   �� 5      -   5         ��Name$ Search��5      $��Search��6:   $	��100��6K   5      �� 5   
   -   5         ��Name$ artistsListView��5      $��Visible=�6,   $
��True��6_   $	��350��6�   ��5      �� 5      .R�5      �� $ 
Horizontal=�6!   .+�5      �� ��6$   �� *Index+�� 5       ��6$   �� *
CatCount+	 �� StringFormat$	  ({0})��9� 5!      $��View Artist(s)��6#   .��5"      �� ��6'   �� *artist+��5#   "   �� 5$   &   
 �� DataType$
 local:Artist��63   .R�5%   *   �� $ 
Horizontal=�65   .+�5&   .   �� ��68   �� *Name+9� 5'   .   $��View Album(s)��67   .��5(   2   �� ��6;   �� *Albums+��5)   6   �� 5*   :   $
 local:Albums��6G   .R�5+   >   �� .+�5-   B   �� ��6L   �� *Title+9� 5.   B   $��View Tracks(s)��6K   .��5/   F   �� ��6O   �� *Tracks+��50   J   �� 51   N   $
 local:Track��6[   .R�52   R   �� ��6\   �� *Name+53   O   55   G   56   C   57   ?   58   ;   5:   3   5;   /   5<   +   5=   '   5?      5@      5A      5B      5D      5E      5F      