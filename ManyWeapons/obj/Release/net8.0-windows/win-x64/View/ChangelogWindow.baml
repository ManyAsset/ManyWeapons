   M S B A M L   `   `   `  ����   ManyWeapons&     ManyWeapons.View.ChangelogWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$  	Changelog��$	��500��$	��600��   DarkBackgroundBrush#��[    	TextBrush#��[  � 
ResizeMode$ 	CanResize=� � WindowStartupLocation$ CenterOwner=� � 	Resources   DarkBackground  	DarkPanel  AccentOrange  	TextColor �� Color  DarkPanelBrush  AccentBrush  DarkTabItemContent �� 
TargetType �� Property �� Value 	 FieldLabelStyle 
 FieldCheckStyle  SidebarButtonStyle �� 
TargetType	 � RowDefinitions
 K� IsItemsHost-  'System.Windows.Input.KeyboardNavigation   TabIndex   TabNavigation �� Triggers P� Property P� Value  ThemedSubTabControl K� ZIndex  ThemedSubTabItem ��Name �� CornerRadius �� Triggers �� 
TargetName  ComboBoxToggleButton �� Path �� RelativeSource �� AncestorType �� AncestorLevel �� FallbackValue �� 	ClickMode d� 	IsChecked �� Mode �� SelectionBoxItem �� IsDropDownOpen � AllowsTransparency  J� SnapsToDevicePixels!   DirectionalNavigation" �� Orientation# F�Name  arrowButtonForeground  StandardBorderBrush  StandardBackgroundBrush  HoverBorderBrush  SelectedBackgroundBrush  SelectedForegroundBrush  DisabledForegroundBrush  NormalBrush  NormalBorderBrush  HorizontalNormalBrush  HorizontalNormalBorderBrush  
GlyphBrush  PressedBrush$ �� 
StartPoint% �� EndPoint& � Color' � Offset  ListBoxBackgroundBrush  ScrollBarLineButton  ScrollBarPageButton  ScrollBarThumb   VerticalScrollBar( ]� DecreaseRepeatButton) ]� Thumb* ]� IncreaseRepeatButton ! HorizontalScrollBar+ � ColumnDefinitions " ScrollViewerCorner # FavsScrollViewer, �� VerticalOffset- � Value. �� ScrollableHeight/ � Maximum0 �� ViewportHeight1 �� ViewportSize*2 �� #ComputedVerticalScrollBarVisibility3 �� Orientation4 �� HorizontalOffset5 �� ScrollableWidth6 �� ViewportWidth,7 �� %ComputedHorizontalScrollBarVisibility��%�  &	       &	      &	 "     &	 3     &	  B     7  &	 L     7  &	 V     7  &	 `     7  &	 j     7  &		 �     7  &	
     7  &	 z    7  '�� �    7  7  7  '�� �    7   7  7  7  7   &	 �    7  7  7   &	 '    7   7  7  7  7   7  7  '��     7  7  &	 m    7  '��     7  7   7  7  7  7  7  7  '�� /    7  7   7  7  '�� D    7   7  7  '�� �    7  7   7  7  &	 �    &	 �    &	 �    &	 �    &	 �    &	 �    &	     &	     &	 0    &	 C    &	 V    &	 i    &	 z    &	 �    &	 d    7  7  7  &	 	    &	 �    &	  �    7  7  7  7  7  7  7  &	! f    7  7  7  7  7  7  7  &	" )    '�� F    7 ! 7   &	# �    7 " ��#1e1e1e����#2d2d30����#FF9800����	White���� 8   �� 8   �� 8   �� 8   �� " ��.���  � ��8   �� " ��.���  � ��8   ��  � ��$
 Bold"���  � ��$ Center=���  � ��$ Right=���  � ��$ 0,0,5,5q��� " ��.���  � ��8   ��  � ��$
 Bold"���  � ��$ Center=���  � ��$ 0,0,5,5q��� " ��.���  � ��$ 50����  � ��$ 50����  � ��$ 5q���  � ��
 ���� ��  � ��8   ��  � ��$ 0q���  �@�Cursor$
 Hand����  �@^�ShowOnDisabled$
 True����  �@^�InitialShowDelay$	 100����  � �� �� " ��.R��� #��z��._��� $��Center=�$��Center=��� " ��.���  � ��8   ��  � ��8  ��  �@��ContentTemplate Z� ��  � �� �� " ��.R�� 	 �� $
��Auto ��� $��* �.+��� $��0��$

 True��8�� $��0q�$ 1���� $��1��$��SelectedContent��$��0q�$ Local=��� " ��.���  � ��8   ��  � ��8  ��  � ��$ 2q���  � ��$
 10,2q���  � ��8  ��  � ��$ 1q� P�  �@��
IsSelected$
 True��. ���  � ��8  ��  � ��8  �� " ��.���  � ��8   ��  � ��8  ��  � ��$ 0q���  � �� �� " ��.R��� 8�� $

 True��$��0q�$ 1��$ 1���� " ��.���  � ��8   ��  � ��8  ��  � ��$ 2q���  � ��$
 10,2q���  � ��8  ��  � ��$ 1q���  � �� �� " ��.R��� $ Border��#��z��#��z��#��z��$ 2��._��� $��Header��$��Center=�$��Center=�$
��10,2q� P�  �@��
IsSelected$
 True��. ��� $ Border��8   � ���� 8   � ���� $ Border��8   � ��P�  �@J�IsMouseOver$
 True��. ��� $ Border�� � �� �#444444�� 8   � ���� " ��.���  � ��8   ��  � ��8  ��  � ��$ 10q���  � ��$	 0.7q��� " d�.R��� #��z��#��z��#��z��._�� .+��� $
��Left=�$��Center=�F� $��Right=�$��Center=�$��0,0,4,0q�"����        � 	=  	= � z     	8��  �� " ��.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � ��$ 4q���  � �� �� $  HorizontalContentAlignment� ��  ItemsControl$ 1��$
 Left����  � �� �� " ��.R�� .+�d� $��ToggleButton��8�� $��2��$|�false��$ Press=�#��z��#��z��#��z�� �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+.���� #��z 8�� $��4q�$��Center=�$
��Left=�� $��Popup��$��Bottom=�#��z $
 True��$|�False��$��Slide=�.���� 8�� 8�� $��1q����� *ActualWidth+ ��  ComboBox._��� $��0q�$
  True��.���� $

 True��$! 	Contained=� P�  �@J�IsMouseOver$
 True��. ��� 8   � ����  � �� �#333333P�  � {�$ False��. ���  � ��
 ������� " ��.���  � ��8   ��  � ��8  ��  � ��$
 Left=���  � ��$	 4,2q���  � �� �� " ��.R��� $ Border��#��z��._��� $
��Left=�$��Center=� P�  �@��IsHighlighted$
 True��. ��� $ Border��8   � ���� 8   � ���� " ��.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � ��$ 4q��� " ��.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � ��$ 2q���  � ��$	 4,2q���  � �� �� " ��.R��� $" 
Horizontal=�.+��� $��18��$��18��#��z��#��z��#��z��._�F� $# 	CheckMark��$��12��$��12��$��Center=�$��Center=�$y�	Collapsed=�8�� $��2��"���Ѐ� ��[ �@KL @T� р�� ��- 	�� $��5,0,0,0q�$��Center=�$
��True�� P�  �@d�	IsChecked$
 TrueY�. ��� $ 	CheckMark�� � y�$ Visible=��� $ #FF9800���� $ #FF9800���� $ #1e1e1e���� $ #FFB84D���� $ #2d2d30���� $ #FF9800���� $
 #555���� $ #FF9800���� $ #FF9800���� $ #FF9800���� $ #FF9800���� $ White���� $	$ 0,0&�$	% 0,1&�.��� $& #FFB84D��$	' 0.0Q�� $& #FF9800��$	' 0.5Q�� $& #FF6F00��$	' 1.0Q��� $	$ 0,0&�$% 1,0.001&�.��� $& #2d2d30��$	' 0.0Q�� $& #2d2d30��$	' 0.6Q�� $& #1e1e1e��$	' 1.0Q��� " ��.���  �@J�SnapsToDevicePixels$
 True����  �@�OverridesDefaultStyle$
 true����  � |�$ false����  � �� �� " ��.R��� $��Border��$��1q�$ 2��
������ 8��  $��0q�._�F� $��Center=�$��Center=�
����������� $ Content� �� *TemplatedParent+ P�  � ��$
 true��. ��� $ Border��8   � ��P�  � {�$ false��. ��� 8   � ���� " ��.���  �@J�SnapsToDevicePixels$
 True����  �@�OverridesDefaultStyle$
 true����  � ��$ false����  � |�$ false����  � �� �� " ��.R��� 
������ �� " n�.���  �@J�SnapsToDevicePixels$
 True����  �@�OverridesDefaultStyle$
 true����  � ��$ false����  � |�$ false����  � �� �� " n�.R��� $ 2��#��z��#��z��$��1q��� " ��.R�� $��12��	 �� $��18 ��� $��* ��� $��18 �.+��� $��3��$ 2��
������ �� $��0��8��  $��18��$��ScrollBar.LineUpCommand��$��M 0 4 L 8 4 L 4 0 Z��]� $��
PART_Track��$��1��$
��true��( �� 8�� $��ScrollBar.PageUpCommand��) n� 8�� $��1,0,1,0q�8�� 8�� * �� 8�� $��ScrollBar.PageDownCommand���� $��2��8�� $��18��$��ScrollBar.LineDownCommand��$��M 0 0 L 4 4 L 8 0 Z���� " ��.R�� $��12��+ �� $��18 ��� $��* ��� $��18 �.+��� $��3��$ 2��
������ �� $��0��8��  $��18��$��ScrollBar.LineLeftCommand��$��M 4 0 L 4 8 L 0 4 Z��]� $��
PART_Track��$��1��$��False��( �� 8�� $��ScrollBar.PageLeftCommand��) n� 8�� $��0,1,0,1q�8�� 8�� * �� 8�� $ ��ScrollBar.PageRightCommand���� $��2��8�� $��18��$ ��ScrollBar.LineRightCommand��$��M 0 0 L 4 4 L 0 8 Z���� " ��.R��� 
������ �� " ��.���  �@J�SnapsToDevicePixels$
 True����  �@�OverridesDefaultStyle$
 true�� P�  �@��Orientation$ 
Horizontal=�. ���  � ��$
 Auto����  � ��$ 12����  � ��8   P�  �@��Orientation$ Vertical=�. ���  � ��$ 12����  � ��$
 Auto����  � ��8  �� " ��.���  �@�OverridesDefaultStyle$
 True����  � �� �� " ��.R�� + �� $��* ��� $
��Auto �	 �� $��* ��� $
��Auto �.+��� $��0��$��0���� $��PART_VerticalScrollBar��$��1��$��0��#- z, #/ z. #1 z0 #y�z2 �� $��PART_HorizontalScrollBar��$3 
Horizontal=�$��0��$��1��#- z4 #/ z5 #1 z6 #y�z7 �� 8��  $��1��$��1��.��� .+�]� $
��True��$��10q�.+��� -   $��ChangelogBox��8 �� AcceptsReturn$
8 True��"9 �� VerticalScrollBarVisibility$
9 Auto=�$: �� HorizontalScrollBarVisibility$
: Auto=�; �� TextWrapping$
; Wrap=�$��Consolas)�$��14(�#��[  #��[ #��[ $	��Top=�$s��mVersion 1.0.0 - Initial release

Version 1.0.1 - Fixed Resize Bug - added Change Log. - Updated Splash Screen���� $��Bottom=�$" 
Horizontal=�$
��Left=�$��0,10,0,0q�$��Bottom=�.+��� $&�� /Images/ManyWeapons_Logo_128.png��$��24��$��24��$��0,0,6,0q��� $��© elfenliedtopfan5 2025��$
��Bold"�#��[ $��Center=�