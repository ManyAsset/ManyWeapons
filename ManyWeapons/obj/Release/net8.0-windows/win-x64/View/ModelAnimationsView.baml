   M S B A M L   `   `   `  ���� F  BManyWeapons, Version=1.0.2.0, Culture=neutral, PublicKeyToken=null3clr-namespace:ManyWeapons.ViewManyWeapons.View  *    $ManyWeapons.View.ModelAnimationsView   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     0localclr-namespace:ManyWeapons.View       � 	Resources     DarkBackground  	DarkPanel  AccentOrange  	TextColor  DarkBackgroundBrush �� Color  DarkPanelBrush  AccentBrush  	TextBrush  DarkTabItemContent �� 
TargetType �� Property �� Value 	 FieldLabelStyle 
 FieldCheckStyle  SidebarButtonStyle �� 
TargetType � RowDefinitions K� IsItemsHost-  'System.Windows.Input.KeyboardNavigation   TabIndex	   TabNavigation
 �� Triggers P� Property P� Value  ThemedSubTabControl K� ZIndex  ThemedSubTabItem ��Name �� CornerRadius �� Triggers �� 
TargetName  ComboBoxToggleButton �� Path �� RelativeSource �� AncestorType �� AncestorLevel �� FallbackValue �� 	ClickMode d� 	IsChecked �� Mode �� SelectionBoxItem �� IsDropDownOpen � AllowsTransparency J� SnapsToDevicePixels   DirectionalNavigation �� Orientation  F�Name  arrowButtonForeground  StandardBorderBrush  StandardBackgroundBrush  HoverBorderBrush  SelectedBackgroundBrush  SelectedForegroundBrush  DisabledForegroundBrush  NormalBrush  NormalBorderBrush  HorizontalNormalBrush  HorizontalNormalBorderBrush  
GlyphBrush  PressedBrush! �� 
StartPoint" �� EndPoint# � Color$ � Offset  ListBoxBackgroundBrush  ScrollBarLineButton  ScrollBarPageButton  ScrollBarThumb   VerticalScrollBar% ]� DecreaseRepeatButton& ]� Thumb' ]� IncreaseRepeatButton ! HorizontalScrollBar( � ColumnDefinitions " ScrollViewerCorner # FavsScrollViewer) �� VerticalOffset* � Value+ �� ScrollableHeight, � Maximum- �� ViewportHeight. �� ViewportSize*/ �� #ComputedVerticalScrollBarVisibility0 �� Orientation1 �� HorizontalOffset2 �� ScrollableWidth3 �� ViewportWidth,4 �� %ComputedHorizontalScrollBarVisibility��%�  &	        &	      &	 "     &	 3     &	 B     7   &	 L     7  &	 V     7  &	 `     7  &	 j     7  &		 �     7  &	
     7  &	 z    7  '�� �    7  7  7  '�� �    7  7  7  7  7  &	 �    7  7  7  &	 '    7  7  7  7  7  7  7  '��     7  7  &	 m    7  '��     7  7  7  7  7  7  7  7  '�� /    7  7  7  7  '�� D    7  7  7  '�� �    7  7  7  7  &	 �    &	 �    &	 �    &	 �    &	 �    &	 �    &	     &	     &	 0    &	 C    &	 V    &	 i    &	 z    &	 �    &	 d    7  7  7  &	 	    &	 �    &	  �    7  7  7  7  7  7  7  &	! f    7  7  7  7  7  7  7  &	" )    '�� F    7 ! 7   &	# �    7 " ��#1e1e1e����#2d2d30����#FF9800����	White���� 8   �� 8   �� 8   �� 8   �� " ��.���  � ��8   �� " ��.���  � ��8   ��  � ��$
 Bold"���  � ��$ Center=���  � ��$ Right=���  � ��$ 0,0,5,5q��� " ��.���  � ��8   ��  � ��$
 Bold"���  � ��$ Center=���  � ��$ 0,0,5,5q��� " ��.���  � ��$ 50����  � ��$ 50����  � ��$ 5q���  � ��
 ���� ��  � ��8   ��  � ��$ 0q���  �@�Cursor$
 Hand����  �@^�ShowOnDisabled$
 True����  �@^�InitialShowDelay$	 100����  � �� �� " ��.R��� #��z��._��� $��Center=�$��Center=��� " ��.���  � ��8   ��  � ��8  ��  �@��ContentTemplate Z� ��  � �� �� " ��.R��  �� $
��Auto ��� $��* �.+��� $��0��$
 True��8�� $��0q�$ 1���� $��1��$��SelectedContent��$��0q�$	 Local=��� " ��.���  � ��8   ��  � ��8  ��  � ��$ 2q���  � ��$
 10,2q���  � ��8  ��  � ��$ 1q�
 P�  �@��
IsSelected$
 True��. ���  � ��8  ��  � ��8  �� " ��.���  � ��8   ��  � ��8  ��  � ��$ 0q���  � �� �� " ��.R��� 8�� $
 True��$��0q�$ 1��$ 1���� " ��.���  � ��8   ��  � ��8  ��  � ��$ 2q���  � ��$
 10,2q���  � ��8  ��  � ��$ 1q���  � �� �� " ��.R��� $ Border��#��z��#��z��#��z��$ 2��._��� $��Header��$��Center=�$��Center=�$
��10,2q� P�  �@��
IsSelected$
 True��. ��� $ Border��8   � ���� 8   � ���� $ Border��8   � ��P�  �@J�IsMouseOver$
 True��. ��� $ Border�� � �� �#444444�� 8   � ���� " ��.���  � ��8   ��  � ��8  ��  � ��$ 10q���  � ��$	 0.7q��� " d�.R��� #��z��#��z��#��z��._�� .+��� $
��Left=�$��Center=�F� $��Right=�$��Center=�$��0,0,4,0q�"����        � 	=  	= � z     	8��  �� " ��.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � ��$ 4q���  � �� �� $  HorizontalContentAlignment� ��  ItemsControl$ 1��$
 Left����  � �� �� " ��.R�� .+�d� $��ToggleButton��8�� $��2��$|�false��$ Press=�#��z��#��z��#��z�� �� *IsDropDownOpen+$ TwoWay=� �� *TemplatedParent+.���� #��z 8�� $��4q�$��Center=�$
��Left=�� $��Popup��$��Bottom=�#��z $
 True��$|�False��$��Slide=�.���� 8�� 8�� $��1q����� *ActualWidth+ ��  ComboBox._��� $��0q�$
 True��.���� $
 True��$ 	Contained=� P�  �@J�IsMouseOver$
 True��. ��� 8   � ����  � �� �#333333P�  � {�$ False��. ���  � ��
 ������� " ��.���  � ��8   ��  � ��8  ��  � ��$
 Left=���  � ��$	 4,2q���  � �� �� " ��.R��� $ Border��#��z��._��� $
��Left=�$��Center=� P�  �@��IsHighlighted$
 True��. ��� $ Border��8   � ���� 8   � ���� " ��.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � ��$ 4q��� " ��.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � ��$ 2q���  � ��$	 4,2q���  � �� �� " ��.R��� $ 
Horizontal=�.+��� $��18��$��18��#��z��#��z��#��z��._�F� $  	CheckMark��$��12��$��12��$��Center=�$��Center=�$y�	Collapsed=�8�� $��2��"���Ѐ� ��[ �@KL @T� р�� ��- 	�� $��5,0,0,0q�$��Center=�$
��True�� P�  �@d�	IsChecked$
 TrueY�. ��� $ 	CheckMark�� � y�$ Visible=��� $ #FF9800���� $ #FF9800���� $ #1e1e1e���� $ #FFB84D���� $ #2d2d30���� $ #FF9800���� $
 #555���� $ #FF9800���� $ #FF9800���� $ #FF9800���� $ #FF9800���� $ White���� $	! 0,0&�$	" 0,1&�.��� $# #FFB84D��$	$ 0.0Q�� $# #FF9800��$	$ 0.5Q�� $# #FF6F00��$	$ 1.0Q��� $	! 0,0&�$" 1,0.001&�.��� $# #2d2d30��$	$ 0.0Q�� $# #2d2d30��$	$ 0.6Q�� $# #1e1e1e��$	$ 1.0Q��� " ��.���  �@J�SnapsToDevicePixels$
 True����  �@�OverridesDefaultStyle$
 true����  � |�$ false����  � �� �� " ��.R��� $��Border��$��1q�$ 2��
������ 8��  $��0q�._�F� $��Center=�$��Center=�
����������� $ Content� �� *TemplatedParent+ P�  � ��$
 true��. ��� $ Border��8   � ��P�  � {�$ false��. ��� 8   � ���� " ��.���  �@J�SnapsToDevicePixels$
 True����  �@�OverridesDefaultStyle$
 true����  � ��$ false����  � |�$ false����  � �� �� " ��.R��� 
������ �� " n�.���  �@J�SnapsToDevicePixels$
 True����  �@�OverridesDefaultStyle$
 true����  � ��$ false����  � |�$ false����  � �� �� " n�.R��� $ 2��#��z��#��z��$��1q��� " ��.R�� $��12�� �� $��18 ��� $��* ��� $��18 �.+��� $��3��$ 2��
������ �� $��0��8��  $��18��$��ScrollBar.LineUpCommand��$��M 0 4 L 8 4 L 4 0 Z��]� $��
PART_Track��$��1��$
��true��% �� 8�� $��ScrollBar.PageUpCommand��& n� 8�� $��1,0,1,0q�8�� 8�� ' �� 8�� $��ScrollBar.PageDownCommand���� $��2��8�� $��18��$��ScrollBar.LineDownCommand��$��M 0 0 L 4 4 L 8 0 Z���� " ��.R�� $��12��( �� $��18 ��� $��* ��� $��18 �.+��� $��3��$ 2��
������ �� $��0��8��  $��18��$��ScrollBar.LineLeftCommand��$��M 4 0 L 4 8 L 0 4 Z��]� $��
PART_Track��$��1��$��False��% �� 8�� $��ScrollBar.PageLeftCommand��& n� 8�� $��0,1,0,1q�8�� 8�� ' �� 8�� $ ��ScrollBar.PageRightCommand���� $��2��8�� $��18��$ ��ScrollBar.LineRightCommand��$��M 0 0 L 4 4 L 0 8 Z���� " ��.R��� 
������ �� " ��.���  �@J�SnapsToDevicePixels$
 True����  �@�OverridesDefaultStyle$
 true��
 P�  �@��Orientation$ 
Horizontal=�. ���  � ��$
 Auto����  � ��$ 12����  � ��8   P�  �@��Orientation$ Vertical=�. ���  � ��$ 12����  � ��$
 Auto����  � ��8  �� " ��.���  �@�OverridesDefaultStyle$
 True����  � �� �� " ��.R�� ( �� $��* ��� $
��Auto � �� $��* ��� $
��Auto �.+��� $��0��$��0���� $��PART_VerticalScrollBar��$��1��$��0��#* z) #, z+ #. z- #y�z/ �� $��PART_HorizontalScrollBar��$0 
Horizontal=�$��0��$��1��#* z1 #, z2 #. z3 #y�z4 �� 8��  $��1��$��1��.��� .+��� $��5q�#��[ .@��� $��Models��.���� $
��Auto=�.���� $��5q�.+��� $��Weapon Models��.��� $��3q�( �� $	��200 ��� $��* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��gunModel��$��0��$��0��#��[	 �� $��0��$��1������ *
[gunModel]+$ TwoWay=��� $��
knifeModel��$��1��$��0��#��[	 �� $��1��$��1������ *[knifeModel]+$ TwoWay=��� $��
worldModel��$��2��$��0��#��[	 �� $��2��$��1������ *[worldModel]+$ TwoWay=��� $��worldKnifeModel��$��3��$��0��#��[	 �� $��3��$��1������ *[worldKnifeModel]+$ TwoWay=��� $��	viewHands��$��4��$��0��#��[	 �� $��4��$��1������ *[handModel]+$ TwoWay=��� $��worldClipModel��$��5��$��0��#��[	 �� $��5��$��1������ *[worldClipModel]+$ TwoWay=��� $ ��Hidden Tags (one per line)��.���� 5 �� AcceptsReturn$
5 True��$	��100��"6 �� VerticalScrollBarVisibility$
6 Auto=�7 �� TextWrapping$
7 Wrap=�$��5q����� *
[hideTags]+$ TwoWay=��� $��Alternative Models��$��10q�.��9� $"��Show/Hide Alternative Models��8 9� 
IsExpanded$8 False��
�������.���� $
��Auto=�$��Disabled=�.��A� 9 A� Columns$9 2��$��10q�.+��� $ 
Horizontal=�$��5q�.+��� $��	gunModel2��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel2]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel2��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel2]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��	gunModel3��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel3]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel3��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel3]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��	gunModel4��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel4]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel4��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel4]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��	gunModel5��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel5]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel5��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel5]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��	gunModel6��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel6]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel6��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel6]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��	gunModel7��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel7]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel7��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel7]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��	gunModel8��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel8]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel8��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel8]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��	gunModel9��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel9]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel9��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel9]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��
gunModel10��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel10]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel10��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel10]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��
gunModel11��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel11]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel11��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel11]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��
gunModel12��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel12]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel12��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel12]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��
gunModel13��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel13]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel13��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel13]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��
gunModel14��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel14]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel14��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel14]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��
gunModel15��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel15]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel15��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel15]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��
gunModel16��$	��100��#��[	 $��Center=��� $	��200������ *[gunModel16]+$ TwoWay=��� $ 
Horizontal=�$��5q�.+��� $��worldModel16��$	��100��#��[	 $��Center=��� $	��200������ *[worldModel16]+$ TwoWay=��� $��Anims��#��[ .���� $
��Auto=�.���� $��5q�.+��� $��All Animations��.��� $��5q�( �� $	��200 ��� $��* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��	adsUpAnim��$��0��$��0��#��[	 �� $��0��$��1������ *[adsUpAnim]+$ TwoWay=��� $��adsDownAnim��$��1��$��0��#��[	 �� $��1��$��1������ *[adsDownAnim]+$ TwoWay=��� $��adsFireAnim��$��2��$��0��#��[	 �� $��2��$��1������ *[adsFireAnim]+$ TwoWay=��� $��adsLastShotAnim��$��3��$��0��#��[	 �� $��3��$��1������ *[adsLastShotAnim]+$ TwoWay=��� $��RechamberAnim��$��4��$��0��#��[	 �� $��4��$��1������ *[rechamberAnim]+$ TwoWay=��� $��adsRechamberAnim��$��5��$��0��#��[	 �� $��5��$��1������ *[adsRechamberAnim]+$ TwoWay=��� $��idleAnim��$��6��$��0��#��[	 �� $��6��$��1������ *
[idleAnim]+$ TwoWay=��� $��fireAnim��$��7��$��0��#��[	 �� $��7��$��1������ *
[fireAnim]+$ TwoWay=��� $��lastShotAnim��$��8��$��0��#��[	 �� $��8��$��1������ *[lastShotAnim]+$ TwoWay=��� $��
reloadAnim��$��9��$��0��#��[	 �� $��9��$��1������ *[reloadAnim]+$ TwoWay=��� $��reloadEmptyAnim��$��10��$��0��#��[	 �� $��10��$��1������ *[reloadEmptyAnim]+$ TwoWay=��� $��reloadStartAnim��$��11��$��0��#��[	 �� $��11��$��1������ *[reloadStartAnim]+$ TwoWay=��� $��reloadEndAnim��$��12��$��0��#��[	 �� $��12��$��1������ *[reloadEndAnim]+$ TwoWay=��� $��	meleeAnim��$��13��$��0��#��[	 �� $��13��$��1������ *[meleeAnim]+$ TwoWay=��� $��meleeChargeAnim��$��14��$��0��#��[	 �� $��14��$��1������ *[meleeChargeAnim]+$ TwoWay=��� $��	raiseAnim��$��15��$��0��#��[	 �� $��15��$��1������ *[raiseAnim]+$ TwoWay=��� $��quickRaiseAnim��$��16��$��0��#��[	 �� $��16��$��1������ *[quickRaiseAnim]+$ TwoWay=��� $��dropAnim��$��17��$��0��#��[	 �� $��17��$��1������ *
[dropAnim]+$ TwoWay=��� $��quickDropAnim��$��18��$��0��#��[	 �� $��18��$��1������ *[quickDropAnim]+$ TwoWay=��� $��firstRaiseAnim��$��19��$��0��#��[	 �� $��19��$��1������ *[firstRaiseAnim]+$ TwoWay=��� $��sprintInAnim��$��20��$��0��#��[	 �� $��20��$��1������ *[sprintInAnim]+$ TwoWay=��� $��sprintLoopAnim��$��21��$��0��#��[	 �� $��21��$��1������ *[sprintLoopAnim]+$ TwoWay=��� $��sprintOutAnim��$��22��$��0��#��[	 �� $��22��$��1������ *[sprintOutAnim]+$ TwoWay=��� $��altDropAnim��$��23��$��0��#��[	 �� $��23��$��1������ *[altDropAnim]+$ TwoWay=��� $��altRaiseAnim��$��24��$��0��#��[	 �� $��24��$��1������ *[altRaiseAnim]+$ TwoWay=��� $��
deployAnim��$��25��$��0��#��[	 �� $��25��$��1������ *[deployAnim]+$ TwoWay=��� $��emptyDropAnim��$��26��$��0��#��[	 �� $��26��$��1������ *[emptyDropAnim]+$ TwoWay=��� $��emptyIdleAnim��$��27��$��0��#��[	 �� $��27��$��1������ *[emptyIdleAnim]+$ TwoWay=��� $��emptyRaiseAnim��$��28��$��0��#��[	 �� $��28��$��1������ *[emptyRaiseAnim]+$ TwoWay=��� $��State Timers��#��[ .���� $
��Auto=�.���� $��5q�$ Vertical=�.+��� $
��Fire��.��� $��5q�( �� $	��200 ��� $��* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��fireTime��$��0��$��0��#��[	 �� $��0��$��1������ *
[fireTime]+$ TwoWay=��� $��	fireDelay��$��1��$��0��#��[	 �� $��1��$��1������ *[fireDelay]+$ TwoWay=��� $��Rechamber Timers��.��� $��5q�( �� $	��200 ��� $��* � �� $
��Auto ��� $
��Auto �.+��� $��rechamberTime��$��0��$��0��#��[	 �� $��0��$��1������ *[rechamberTime]+$ TwoWay=��� $��rechamberBoltTime��$��1��$��0��#��[	 �� $��1��$��1������ *[rechamberBoltTime]+$ TwoWay=��� $��Reload Timers��.��� $��5q�( �� $	��200 ��� $��* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��
reloadTime��$��0��$��0��#��[	 �� $��0��$��1������ *[reloadTime]+$ TwoWay=��� $��reloadAddTime��$��1��$��0��#��[	 �� $��1��$��1������ *[reloadAddTime]+$ TwoWay=��� $��reloadEmptyTime��$��2��$��0��#��[	 �� $��2��$��1������ *[reloadEmptyTime]+$ TwoWay=��� $��reloadStartTime��$��4��$��0��#��[	 �� $��4��$��1������ *[reloadStartTime]+$ TwoWay=��� $��reloadStartAddTime��$��5��$��0��#��[	 �� $��5��$��1������ *[reloadStartAddTime]+$ TwoWay=��� $��reloadEndTime��$��6��$��0��#��[	 �� $��6��$��1������ *[reloadEndTime]+$ TwoWay=��� $��Sprints��.��� $��5q�( �� $	��200 ��� $��* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��sprintInTime��$��1��$��0��#��[	 �� $��1��$��1������ *[sprintInTime]+$ TwoWay=��� $��sprintLoopTime��$��2��$��0��#��[	 �� $��2��$��1������ *[sprintLoopTime]+$ TwoWay=��� $��sprintOutTime��$��3��$��0��#��[	 �� $��3��$��1������ *[sprintOutTime]+$ TwoWay=��� $��Melee Timers��.��� $��5q�( �� $	��200 ��� $��* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��	meleeTime��$��0��$��0��#��[	 �� $��0��$��1������ *[meleeTime]+$ TwoWay=��� $��
meleeDelay��$��1��$��0��#��[	 �� $��1��$��1������ *[meleeDelay]+$ TwoWay=��� $��meleeChargeTime��$��2��$��0��#��[	 �� $��2��$��1������ *[meleeChargeTime]+$ TwoWay=��� $��meleeChargeDelay��$��3��$��0��#��[	 �� $��3��$��1������ *[meleeChargeDelay]+$ TwoWay=��� $��Raise / Drop Timers��.��� $��5q�( �� $	��200 ��� $��* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��	raiseTime��$��0��$��0��#��[	 �� $��0��$��1������ *[raiseTime]+$ TwoWay=��� $��dropTime��$��1��$��0��#��[	 �� $��1��$��1������ *
[dropTime]+$ TwoWay=��� $��altRaiseTime��$��2��$��0��#��[	 �� $��2��$��1������ *[altRaiseTime]+$ TwoWay=��� $��altDropTime��$��3��$��0��#��[	 �� $��3��$��1������ *[altDropTime]+$ TwoWay=��� $��quickRaiseTime��$��4��$��0��#��[	 �� $��4��$��1������ *[quickRaiseTime]+$ TwoWay=��� $��quickDropTime��$��5��$��0��#��[	 �� $��5��$��1������ *[quickDropTime]+$ TwoWay=��� $��firstRaiseTime��$��6��$��0��#��[	 �� $��6��$��1������ *[firstRaiseTime]+$ TwoWay=��� $��emptyRaiseTime��$��7��$��0��#��[	 �� $��7��$��1������ *[emptyRaiseTime]+$ TwoWay=��� $��emptyDropTime��$��8��$��0��#��[	 �� $��8��$��1������ *[emptyDropTime]+$ TwoWay=�