   M S B A M L   `   `   `  ����  XmlDashboard    XmlDashboard.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	     � Title$  	Dashboard��5   	   $	��600��6   $
��1000��6(    � WindowStartupLocation$ CenterScreen=�5   	    � 	Resources 5
         PrimaryColor �� Color  DarkBackground  LightBackground  
HoverColor  SideBarButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType ��Name	 �� CornerRadius
 � ColumnDefinitions ��Name
 � Tag �� Triggers P� Property P� Value �� 
TargetName  HeaderTextStyle��%\  &	        &	 !     &	 B     &	 c     &	 �     7  7   &	 8    �� 5   
   $ #0078D7��6/   �� 5   
   $ #1E1E1E��61   �� 5   
   $ #252526��62   �� 5   
   $ #3E3E40��6-   �� 5   
   " ��6+   .�5      ��  � ��
 ���� 6+   �� 5       � ��$ 0q�60   �� 5       � ��
 �����6+   �� 5       � ��$ 14(�6)   �� 5       � ��$
 Left=�6;   �� 5       � ��$ 15,10q�6(   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ border��6!   #��z��5   !   $	 4��5   !   $	��5,2q�5   !   ._�5       � 
 5!   "   �� 5"   &   $
��Auto �67   �� 5#   &   $��* �67   .+�5&   "   �� $
 icon��6,   $��0��5'   ,   $��Segoe MDL2 Assets)�5(   ,   #��z 5)   ,   $��0,0,10,0q�5*   ,   $��Center=�5+   ,   �� 5-   "   $��1��63   $��Center=�5.   3   5/      50       52      P� 53       �@J�IsMouseOver$
 True��6=   . �54   "   �� $ border��6)   8    � ��6S   55      P� 56       � ��$
 True��6;   . �57   "   �� $ border��6)   8   � ��6S   58      5:      5<      5=      �� 5@   
   " ��6(   .�5A      ��  � ��
 �����6+   �� 5B       � ��$ 18(�6)   �� 5C       � ��$
 Bold"�6+   �� 5D       � ��$ Center=�62   �� 5E       � ��$ 10q�6'   5F      5G      .��5I      �  � RowDefinitions 5J   
   �� 5K      $
��Auto �6   �� 5L      $��* �6   �� 5M      $
��Auto �6   
 5P   
   �� 5Q      $
��Auto �6   �� 5R      $��* �6   .+�5W   
   �� $��0��6   $��2��6   #��[ 5X       �� Padding$ 10q�5Y      ._�5Z      � .+�5[      �� #��[ 6   $��	Dashboard��5\      $
��Left=�5]      �� 5_       �� Orientation$ 
Horizontal=�6   $��Right=�66   .+�5`      �� #��[ 6   $��Notifications��5a      $	 ��5b      $��0,0,10,0q�5c      �� 5e      #��[ 6   $��Settings��5f      $	 ��5g      5h      5i      5j      �� 5m   
   $��1��6   $��0��6   #��[ 5n      $	��200��5o      $	��150��5p      ._�5q      �� .+�5s      �� -   5         ��Name$ 
HomeButton��5s      #��[ 5t      $
��Home��5u      $	 ��5v      ��5w      �� *NavigateHomeCommand+�� 5y      -   5        $ UsersButton��5y      #��[ 5z   	   $��Users��5{   	   $	 ��5|   	   ��5}   	   �� *NavigateUsersCommand+5~      5      �� 5�      -   5        $ ContentBorder��5�      $��1��5�      $��1��6   #��[ 5�      $ 20q�5�      ._�5�       � -   5          �Name$ 	MainFrame��5�      $��1��5�      $��1��6   #��[ 5�        � NavigationUIVisibility$ Hidden=�5�      5�      �� 5�   
   $��2��6   $��2��6   #��[ 5�      $ 10q�5�      ._�5�      �� $ ��© 2025 LAFRAOUZI Moussine��6   
�������$��Center=�5�      5�      5�      5�      