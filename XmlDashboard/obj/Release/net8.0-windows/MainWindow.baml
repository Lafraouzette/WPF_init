   M S B A M L   `   `   `  ����   XmlDashboard    XmlDashboard.MainWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006       � Title$  	Dashboard��$	��600��$
��1000�� � WindowStartupLocation$ CenterScreen=� � 	Resources    PrimaryColor �� Color  DarkBackground  LightBackground  
HoverColor  SideBarButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType ��Name	 �� CornerRadius
 � ColumnDefinitions ��Name
 � Tag �� Triggers P� Property P� Value �� 
TargetName  HeaderTextStyle��%  &	        &	      &	 &     &	 9     &	 L     7  7   &	 K    �� $ #0078D7���� $ #1E1E1E���� $ #252526���� $ #3E3E40���� " ��.���  � ��
 ���� ��  � ��$ 0q���  � ��
 �������  � ��$ 14(���  � ��$
 Left=���  � ��$ 15,10q���  � �� �� " ��.R��� $ border��#��z��$	 4��$	��5,2q�._�� 
 �� $
��Auto ��� $��* �.+��� $
 icon��$��0��$��Segoe MDL2 Assets)�#��z $��0,0,10,0q�$��Center=��� $��1��$��Center=� P�  �@J�IsMouseOver$
 True��. ��� $ border��8    � ��P�  � ��$
 True��. ��� $ border��8   � ���� " ��.���  � ��
 �������  � ��$ 18(���  � ��$
 Bold"���  � ��$ Center=���  � ��$ 10q�.���  � RowDefinitions �� $
��Auto ��� $��* ��� $
��Auto �
 �� $
��Auto ��� $��* �.+��� $��0��$��2��#��[  �� Padding$ 10q�._�� .+��� #��[ $��	Dashboard��$
��Left=���  �� Orientation$ 
Horizontal=�$��Right=�.+��� #��[ $��Notifications��$	 ��$��0,0,10,0q��� #��[ $��Settings��$	 ���� $��1��$��0��#��[ $	��200��$	��150��._��� .+��� -    ��Name$ 
HomeButton��#��[ $
��Home��$	 ������ *NavigateHomeCommand+�� -   $ UsersButton��#��[ $��Users��$	 ������ *NavigateUsersCommand+�� -   $ ContentBorder��$��1��$��1��#��[ $ 20q�._� � -     �Name$ 	MainFrame��$��1��$��1��#��[   � NavigationUIVisibility$ Hidden=��� $��2��$��2��#��[ $ 10q�._��� $ ��© 2025 LAFRAOUZI Moussine��
�������$��Center=�