   M S B A M L   `   `   `  ���� F  BManyWeapons, Version=1.0.2.0, Culture=neutral, PublicKeyToken=null)clr-namespace:ManyWeaponsManyWeapons      ManyWeapons.MainWindow   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     +localclr-namespace:ManyWeapons     -     J� 	AllowDrop$
  True�� � Title$ ManyWeapons�� � WindowStyle$
 None=� � AllowsTransparency$
 True��
������  � SizeToContent$ Manual=� � UseLayoutRounding$
 True�� J� SnapsToDevicePixels$
 True�� � 
ResizeMode$ 	CanResize=�$
��1200��$	��800�� � 	Resources    DarkBackground  	DarkPanel  AccentOrange  	TextColor  DarkBackgroundBrush	 �� Color  DarkPanelBrush  AccentBrush  	TextBrush  DarkTabItemContent
 �� 
TargetType �� Property �� Value 	 SidebarButtonStyle �� 
TargetType � RowDefinitions K� IsItemsHost-  'System.Windows.Input.KeyboardNavigation   TabIndex   TabNavigation �� Triggers P� Property P� Value 
 ThemedSubTabControl K� ZIndex  ThemedSubTabItem ��Name �� CornerRadius �� Triggers �� 
TargetName  OrangeListViewStyle  OrangeListViewItemStyle �� Orientation  ComboBoxToggleButton �� Path �� RelativeSource �� AncestorType �� AncestorLevel �� FallbackValue  �� 	ClickMode! d� 	IsChecked" �� Mode# �� SelectionBoxItem$ �� IsDropDownOpen% � AllowsTransparency&   DirectionalNavigation' F�Name  arrowButtonForeground  StandardBorderBrush  StandardBackgroundBrush  HoverBorderBrush  SelectedBackgroundBrush  SelectedForegroundBrush  DisabledForegroundBrush  NormalBrush  NormalBorderBrush  HorizontalNormalBrush  HorizontalNormalBorderBrush  
GlyphBrush  PressedBrush( �� 
StartPoint) �� EndPoint* � Color+ � Offset  ListBoxBackgroundBrush  ScrollBarLineButton  ScrollBarPageButton  ScrollBarThumb   VerticalScrollBar, ]� DecreaseRepeatButton- ]� Thumb. ]� IncreaseRepeatButton ! HorizontalScrollBar/ � ColumnDefinitions " ScrollViewerCorner # FavsScrollViewer0 �� VerticalOffset1 � Value2 �� ScrollableHeight3 � Maximum4 �� ViewportHeight5 �� ViewportSize*6 �� #ComputedVerticalScrollBarVisibility7 �� Orientation8 �� HorizontalOffset9 �� ScrollableWidth: �� ViewportWidth,; �� %ComputedHorizontalScrollBarVisibility $ ThemedMenuItem % 
ThemedMenu & Menu.Static.Background ' Menu.Static.Border ( Menu.Static.Foreground ) Menu.Static.Separator * Menu.Disabled.Foreground  + MenuItem.Selected.Background , MenuItem.Selected.Border !- MenuItem.Highlight.Background . MenuItem.Highlight.Border */ &MenuItem.Highlight.Disabled.Background &0 "MenuItem.Highlight.Disabled.Border $1  MenuScrollingVisibilityConverter 2 	DownArrow 3 UpArrow 4 
RightArrow 5 	Checkmark 6 MenuScrollButton< �� BasedOn= �� 
ResourceId> �� TypeInTargetAssembly? �� CanContentScroll@ �� LineUpCommandA `� ConverterParameterB `� 	ConverterC �� LineDownCommandD ��NameE ]� 
ConditionsF �� PropertyG �� ValueH �NameI � PlacementTargetJ �� ElementNameK �� PaddingL ��NameM �� ClearTypeHintN ��NameO ��NameP � IsSharedSizeScopeQ P� 
SourceNameR z� SharedSizeGroupS ��NameT J� OpacityU m� InputGestureTextV � HorizontalOffsetW � VerticalOffset!  System.Windows.SystemColorsX   ControlDarkBrushKey 7 MenuItemStyle1 8 ThemedButtonStyle 9 TitlebarButtonStyle��%1I  &	        &	      &	 "     &	 3     &	 B     7   &	 L     7  &	 V     7  &	 `     7  &	 j     7  &		 �     7  '�� �    7  7  7  '�� �    7  7  7  7  7  &	
 �    7  7  7  &	 6    7  7  7  7  7  7  7  &	     7  7  7  &	 v    7  7  7  7  '�� �    7  7  &	 �    7  '�� �	    7  7  7  7  7  7  7  7  '�� �    7  7  7  7  '�� �    7  7  7  '�� )    7  7  7  7  &	     &	 &    &	 9    &	 L    &	 _    &	 r    &	 �    &	 �    &	 �    &	 �    &	 �    &	 �    &	 �    &	 e    &	 �    7  7  7  &	 �    &	 H    &	  "    7  7  7  7  7  7  7  &	! �    7  7  7  7  7  7  7  &	" �    '�� �    7 ! 7   &	#     7 " &	$ �    &	% V    7  7  &	& �    &	' �    &	( �    &	) �    &	* �    &	+ �    &	,     &	- "    &	. 5    &	/ H    &	0 [    &	1 n    &	2 s    &	3 �    &	4 �    &	5 �    &	6 +     (�� �     $= MenuScrollViewer��"> �)7 6 7 1 7 3 7 ( 7 6 7 1 7 2 7 ( (�� �$    $= TopLevelItemTemplateKey��"> m�)7 5 7 ( 7 - 7 . 7 * 7 * 7 / 7 0 (�� u(    $= TopLevelHeaderTemplateKey��"> m�)7 5 7 & 7 ' 7 ) 7 - 7 . 7 * 7 * (�� &/    $= SubmenuItemTemplateKey��"> m�)7 + 7 , 7 5 7 ( 7 - 7 . 7 * 7 * 7 / 7 0 (�� 4    $= SubmenuHeaderTemplateKey��"> m�)7 - 7 . 7 ( 7 4 7 ( 7 & 7 ' 7 . 7 * 7 * 7 * &	7 D<    7 ( 7 & 7 ' 7 ( &	8 �?    7  &	9 B    ��#1e1e1e����#2d2d30����#FF9800����	White���� 8	   �� 8	   �� 8	   �� 8	   �� "
 ��.���  � ��8   �� "
 ��.���  � ��$ 50����  � ��$ 50����  � ��$ 5q���  � ��
 ���� ��  � ��8   ��  � ��$ 0q���  �@�Cursor$
 Hand����  �@^�ShowOnDisabled$
 True����  �@^�InitialShowDelay$	 100����  � �� �� " ��.R��� #��z��._��� $��Center=�$��Center=��� "
 ��.���  � ��8   ��  � ��8  ��  �@��ContentTemplate Z� ��  � �� �� " ��.R��  �� $
��Auto ��� $��* �.+��� $��0��$
 True��8�� $��0q�$ 1���� $��1��$��SelectedContent��$��0q�$ Local=��� "
 ��.���  � ��8   ��  � ��8  ��  � ��$ 2q���  � ��$
 10,2q���  � ��8  ��  � ��$ 1q� P�  �@��
IsSelected$
 True��. ���  � ��8  ��  � ��8  �� "
 ��.���  � ��8   ��  � ��8  ��  � ��$ 0q���  � �� �� " ��.R��� 8�� $
 True��$��0q�$ 1��$ 1���� "
 ��.���  � ��8   ��  � ��8  ��  � ��$ 2q���  � ��$
 10,2q���  � ��8  ��  � ��$ 1q���  � �� �� " ��.R��� $ Border��#��z��#��z��#��z��$ 2��._��� $��Header��$��Center=�$��Center=�$
��10,2q� P�  �@��
IsSelected$
 True��. ��� $ Border��8   � ���� 8   � ���� $ Border��8   � ��P�  �@J�IsMouseOver$
 True��. ��� $ Border�� � �� �#444444�� 8   � ���� "
 ��.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q��� "
 ��.���  � ��$ 6q���  � ��$ 2q���  � ��$ Center=���  � ��$ Center=���  � ��
 ���� ��  � ��8   ��  � �� �� " ��.R��� $��Border��#��z��#��z��$��1q�$ 3��._��� $ 
Horizontal=�$��Center=�.+��� $��Center=�$��Center=� P�  �@��
IsSelected$
 True��. ��� $ Border�� � �� �#FFB84D�� $ Border��8   � ���� 8   � ��P�  �@J�IsMouseOver$
 True��. ��� $ Border�� � �� �#FF9800�� 8   � ���� "
 ��.���  � ��8   ��  � ��8  ��  � ��$ 10q���  � ��$	 0.7q��� " d�.R��� #��z��#��z��#��z��._�� .+��� $
��Left=�$��Center=�F� $��Right=�$��Center=�$��0,0,4,0q�"����        � 	=  	= � z     	8��  �� "
 ��.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � ��$ 4q���  � �� �� $  HorizontalContentAlignment� ��  ItemsControl$ 1��$
 Left����  � �� �� " ��.R�� .+�d� $��ToggleButton��8�� $��2��$|�false��$  Press=�#��z��#��z��#��z��! �� *IsDropDownOpen+$" TwoWay=� �� *TemplatedParent+.���� #��z# 8�� $��4q�$��Center=�$
��Left=�� $��Popup��$��Bottom=�#��z$ $
% True��$|�False��$��Slide=�.���� 8�� 8�� $��1q����� *ActualWidth+ ��  ComboBox._��� $��0q�$
 True��.���� $
 True��$& 	Contained=� P�  �@J�IsMouseOver$
 True��. ��� 8   � ����  � �� �#333333P�  � {�$ False��. ���  � ��
 ������� "
 ��.���  � ��8   ��  � ��8  ��  � ��$
 Left=���  � ��$	 4,2q���  � �� �� " ��.R��� $ Border��#��z��._��� $
��Left=�$��Center=� P�  �@��IsHighlighted$
 True��. ��� $ Border��8   � ���� 8   � ���� "
 ��.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � ��$ 4q��� "
 ��.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � ��$ 2q���  � ��$	 4,2q���  � �� �� " ��.R��� $ 
Horizontal=�.+��� $��18��$��18��#��z��#��z��#��z��._�F� $' 	CheckMark��$��12��$��12��$��Center=�$��Center=�$y�	Collapsed=�8�� $��2��"���Ѐ� ��[ �@KL @T� р�� ��- 	�� $��5,0,0,0q�$��Center=�$
��True�� P�  �@d�	IsChecked$
 TrueY�. ��� $ 	CheckMark�� � y�$ Visible=��� $	 #FF9800���� $	 #FF9800���� $	 #1e1e1e���� $	 #FFB84D���� $	 #2d2d30���� $	 #FF9800���� $
	 #555���� $	 #FF9800���� $	 #FF9800���� $	 #FF9800���� $	 #FF9800���� $	 White���� $	( 0,0&�$	) 0,1&�.��� $* #FFB84D��$	+ 0.0Q�� $* #FF9800��$	+ 0.5Q�� $* #FF6F00��$	+ 1.0Q��� $	( 0,0&�$) 1,0.001&�.��� $* #2d2d30��$	+ 0.0Q�� $* #2d2d30��$	+ 0.6Q�� $* #1e1e1e��$	+ 1.0Q��� "
 ��.���  �@J�SnapsToDevicePixels$
 True����  �@�OverridesDefaultStyle$
 true����  � |�$ false����  � �� �� " ��.R��� $��Border��$��1q�$ 2��
������ 8��  $��0q�._�F� $��Center=�$��Center=�
����������� $ Content� �� *TemplatedParent+ P�  � ��$
 true��. ��� $ Border��8   � ��P�  � {�$ false��. ��� 8   � ���� "
 ��.���  �@J�SnapsToDevicePixels$
 True����  �@�OverridesDefaultStyle$
 true����  � ��$ false����  � |�$ false����  � �� �� " ��.R��� 
������ �� "
 n�.���  �@J�SnapsToDevicePixels$
 True����  �@�OverridesDefaultStyle$
 true����  � ��$ false����  � |�$ false����  � �� �� " n�.R��� $ 2��#��z��#��z��$��1q��� " ��.R�� $��12�� �� $��18 ��� $��* ��� $��18 �.+��� $��3��$ 2��
������ �� $��0��8��  $��18��$��ScrollBar.LineUpCommand��$��M 0 4 L 8 4 L 4 0 Z��]� $��
PART_Track��$��1��$
��true��, �� 8�� $��ScrollBar.PageUpCommand��- n� 8�� $��1,0,1,0q�8�� 8�� . �� 8�� $��ScrollBar.PageDownCommand���� $��2��8�� $��18��$��ScrollBar.LineDownCommand��$��M 0 0 L 4 4 L 8 0 Z���� " ��.R�� $��12��/ �� $��18 ��� $��* ��� $��18 �.+��� $��3��$ 2��
������ �� $��0��8��  $��18��$��ScrollBar.LineLeftCommand��$��M 4 0 L 4 8 L 0 4 Z��]� $��
PART_Track��$��1��$��False��, �� 8�� $��ScrollBar.PageLeftCommand��- n� 8�� $��0,1,0,1q�8�� 8�� . �� 8�� $ ��ScrollBar.PageRightCommand���� $��2��8�� $��18��$ ��ScrollBar.LineRightCommand��$��M 0 0 L 4 4 L 0 8 Z���� " ��.R��� 
������ �� "
 ��.���  �@J�SnapsToDevicePixels$
 True����  �@�OverridesDefaultStyle$
 true�� P�  �@��Orientation$ 
Horizontal=�. ���  � ��$
 Auto����  � ��$ 12����  � ��8   P�  �@��Orientation$ Vertical=�. ���  � ��$ 12����  � ��$
 Auto����  � ��8  �� "
 ��.���  �@�OverridesDefaultStyle$
 True����  � �� �� " ��.R�� / �� $��* ��� $
��Auto � �� $��* ��� $
��Auto �.+��� $��0��$��0���� $��PART_VerticalScrollBar��$��1��$��0��#1 z0 #3 z2 #5 z4 #y�z6 �� $��PART_HorizontalScrollBar��$7 
Horizontal=�$��0��$��1��#1 z8 #3 z9 #5 z: #y�z; �� 8��  $��1��$��1���� "
 m�.���  � ��
 �������  � �� �#1e1e1e��  � ��$
 Bold"���  � ��$	 6,2q���  � ��$ 2q���  � �� �� " m�.R��� $��Border��#��z�����#FF9800$��1q�$ 2��$
 true��._�� .+��� $��Header��$��6,0,20,0q�$��Center=�F� $' Arrow��$��Center=�$��Right=�$��0,0,6,0q�
�������$��6��$��6��"����        �    ��[ р�[ ��- 	$y�	Collapsed=� P�  Z�  � ��. ��� $ Arrow�� � y�$ 	Collapsed=�P�  �@��HasItems$
 True��. ��� $ Arrow�� � y�$ Visible=�P�  �@m�IsHighlighted$
 True��. ��� $ Border�� � �� �#FF9800��  � ��
 �   �P�  � {�$ False��. ���  � ��
 ������� "
 o�.���  � ��8   ��  � ��8  ��  � ��$
 Bold"��� $	 #1E1E1E���� $	 #FF9800���� $	 White���� $	 #FF9800���� $	 #777777���� $	 #FF9800���� $	 #FFB84D���� $	 #FF9800���� $	 #FFB84D���� $	 #333333���� $	 #444444��l� �M 0,0 L 3.5,4 L 7,0 Z��M 0,4 L 3.5,0 L 7,4 Z��M 0,0 L 4,3.5 L 0,7 Z��UQF1 M 10.0,1.2 L 4.7,9.1 L 4.5,9.1 L 0,5.2 L 1.3,3.5 L 4.3,6.1L 8.3,0 L 10.0,1.2 Z��� "
 ��< Z� .���  �@��	ClickMode$ Hover=���  � �� �� " ��.R��� $ templateRoot��
������ 
������ $��1q�$
 true��._��� $��Center=�$��6q�$��Center=��� "
 ��< Z� .���  � ��$ Hidden=���  � ��$
 Auto=���  � �� �� " ��.R�� $
 true��/ �� $��* � �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0��$��1��._��� #? z��#��z���� #��Z@ $��0��$|�false��$��0��8��  ����  �� *TemplatedParent+y�`� $A 0��8B  $ Visibility.Collapsed��.1��� $) #ComputedVerticalScrollBarVisibility� �� *TemplatedParent+�� $ VerticalOffset� �� *TemplatedParent+�� $ ExtentHeight� �� *TemplatedParent+�� $ ViewportHeight� �� *TemplatedParent+.��F� 8�� 8�� �� #��ZC $��0��$|�false��$��2��8�� ����  �� *TemplatedParent+y�`� $	A 100��8B  $ Visibility.Collapsed��.1��� $) #ComputedVerticalScrollBarVisibility� �� *TemplatedParent+�� $ VerticalOffset� �� *TemplatedParent+�� $ ExtentHeight� �� *TemplatedParent+�� $ ViewportHeight� �� *TemplatedParent+.��F� 8�� 8�� �� " m�.R��� $ templateRoot��#��z��#��z��#��z��$
 true��._�� $��Center=�/ �� $
��Auto ��� $
��Auto �.+��� $
D Icon��$
��Icon��$��Center=�$��16��$��3q�# z $��Center=�$��16��F� $' 
GlyphPanel��8��  $��LeftToRight=�8�� $��3q�$��Center=�$y�	Collapsed=��� $��Header��$��1��#��z��$
��True��# z  P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�	IsChecked$
 true��. ��� $ 
GlyphPanel�� � y�$ Visible=��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted$
 True��. ��� $ templateRoot��8   � ���� $ templateRoot��8   � ��P�  � {�$ False��. ��� $ templateRoot��8   � ���� $ 
GlyphPanel��8   � ��]� E �� F �@m�IsHighlighted$
G True���� F � {�$G False��./��� $ templateRoot��8   � ���� $ templateRoot��8   � ���� " m�.R��� $ templateRoot��#��z��#��z��#��z��$
 true��._�� $��Center=�/ �� $
��Auto ��� $
��Auto �.+��� $
D Icon��$
��Icon��$��Center=�$��16��$��3q�# z $��Center=�$��16��F� $' 
GlyphPanel��8��  $��LeftToRight=�#��z��$��3q�$��Center=�$y�	Collapsed=��� $��Header��$��1��#��z��$
��True��# z � $H 
PART_Popup��$
% true��$|�false��$��Bottom=�#��� -����� *IsSubmenuOpen+ �� *TemplatedParent+I �� $J templateRoot��.���� $ SubMenuBorder��8�� 8�� $��1q�$K 2q�._��� $L SubMenuScrollViewer����C� *�� $= MenuScrollViewer��"> �+.��� $M Enabled=�.+��� $
��Left=�$��0��$	��Top=�$��0��.+��� $N 
OpaqueRect������ *
Background+$J SubMenuBorder������ *ActualHeight+$J SubMenuBorder������ *ActualWidth+$J SubMenuBorder���� 8�� $
��Left=�$��29,2,0,2q�$��1���� $O ItemsPresenter��$& Cycle=�$
P true��# z $ Cycle=� P� " �@m�IsSuspendingPopupAnimation$
 true��. ��� $ 
PART_Popup�� � ��$
 None=�P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�	IsChecked$
 true��. ��� $ 
GlyphPanel�� � y�$ Visible=��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted$
 True��. ��� $ templateRoot��8   � ���� $ templateRoot��8   � ��P�  � {�$ False��. ��� $ templateRoot��8   � ���� $ 
GlyphPanel��8   � ��P� $Q SubMenuScrollViewer�� � ��$ false��. ��� $ 
OpaqueRect�� �� *VerticalOffset+$J SubMenuScrollViewer�� �@��Top�� $ 
OpaqueRect�� �� *HorizontalOffset+$J SubMenuScrollViewer�� �@��Left�� " m�.R��� $ templateRoot��#��z��#��z��#��z��$��22��$
 true��._�� $��-1q�/ �� $��22��$R MenuItemIconColumnGroup��$
��Auto ��� $��13 ��� $��* ��� $��30 ��� $R MenuItemIGTColumnGroup��$
��Auto ��� $��20 �.+��� $
D Icon��$
��Icon��$��Center=�$��16��$��3q�# z $��Center=�$��16���� $ 
GlyphPanel��8��  8�� $��1q�$}�False��$��Center=�$��22��$��-1,0,0,0q�$��Center=�$y�Hidden=�$��22��._�F� $' Glyph��8�� $��LeftToRight=�8�� $��11��$��10���� $D menuHeaderContainer��$��Header��$��2��$
��Left=�#��z��$
��True��# z $��Center=��� $S menuGestureText��$��4��#��z��$	T 0.7Q�#��zU $��Center=� P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�	IsChecked$
 True��. ��� $ 
GlyphPanel�� � y�$ Visible=��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted$
 True��. ��� $ templateRoot��8   � ���� $ templateRoot��8   � ��P�  � {�$ False��. ��� $ templateRoot��8   � ���� $ Glyph��8   � ��]� E �� F �@m�IsHighlighted$
G True���� F � {�$G False��./��� $ templateRoot��8   � ���� $ templateRoot��8 	  � ���� " m�.R��� $ templateRoot��#��z��#��z��#��z��$��22��$
 true��._�� $��-1q�/ �� $��22��$R MenuItemIconColumnGroup��$
��Auto ��� $��13 ��� $��* ��� $��30 ��� $R MenuItemIGTColumnGroup��$
��Auto ��� $��20 �.+��� $
D Icon��$
��Icon��$��Center=�$��16��$��3q�# z $��Center=�$��16���� $ 
GlyphPanel��8��  8�� $��1q�$��22��$��-1,0,0,0q�$��Center=�$y�Hidden=�$��22��._�F� $' Glyph��#��� 5 $��LeftToRight=�8�� $��11��$��9���� $��Header��$��2��$
��Left=�#��z��$
��True��# z $��Center=��� $��4��#��z��$	T 0.7Q�#��zU $��Center=�F� $' 
RightArrow��$��5��8�� 8�� $
��Left=�$��10,0,0,0q�$��Center=�� $H 
PART_Popup��$
% true��$|�false��$V -2��$��Right=�#��� -�$W -3������ *IsSubmenuOpen+ �� *TemplatedParent+.���� $ SubMenuBorder��8�� 8�� $��1q�$K 2q�._��� $L SubMenuScrollViewer����C� *�� $= MenuScrollViewer��"> �+.��� $M Enabled=�.+��� $
��Left=�$��0��$	��Top=�$��0��.+��� $N 
OpaqueRect������ *
Background+$J SubMenuBorder������ *ActualHeight+$J SubMenuBorder������ *ActualWidth+$J SubMenuBorder���� #��� X $
��Left=�$��29,2,0,2q�$��1���� $O ItemsPresenter��$& Cycle=�$
P true��# z $ Cycle=� P� " �@m�IsSuspendingPopupAnimation$
 true��. ��� $ 
PART_Popup�� � ��$
 None=�P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�	IsChecked$
 True��. ��� $ 
GlyphPanel�� � y�$ Visible=��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted$
 True��. ��� $ templateRoot�� � ��
 ���� �� $ templateRoot��8   � ��P�  � {�$ False��. ��� $ templateRoot��8   � ���� $ Glyph��8 	  � ���� $ 
RightArrow��8 
  � ��P� $Q SubMenuScrollViewer�� � ��$ false��. ��� $ 
OpaqueRect�� �� *VerticalOffset+$J SubMenuScrollViewer�� �@��Top�� $ 
OpaqueRect�� �� *HorizontalOffset+$J SubMenuScrollViewer�� �@��Left�� "
 m�.���  � �� �� *HorizontalContentAlignment+ �� " ����  � �� �� *VerticalContentAlignment+ �� " ����  � ��
 ���� ��  � ��
 ���� ��  � ��$ 1q���  �@��PanningMode$
 Both=���  �@��IsFlicksEnabled$ False����  � �� C� *�� $= SubmenuItemTemplateKey��"> m�+ P�  �@m�Role$ TopLevelHeader=�. ���  � ��
 ���� ��  � ��
 ���� ��  � ��8   ��  � �� C� *�� $= TopLevelHeaderTemplateKey��"> m�+��  � ��$	 6,0q�P�  �@m�Role$ TopLevelItem=�. ���  � ��8  ��  � ��8  ��  � ��8  ��  � �� C� *�� $= TopLevelItemTemplateKey��"> m�+��  � ��$	 6,0q�P�  �@m�Role$ SubmenuHeader=�. ���  � �� C� *�� $= SubmenuHeaderTemplateKey��"> m�+�� "
 ��.���  � ��8   ��  � �� �� *SaveButtonBackground+��  � �� �� *SaveButtonBackground+��  � ��$ 1q���  � ��$
 Bold"���  � ��$	 4,2q���  �@�Cursor$
 Hand����  � �� �� " ��.R��� $ border��#��z��#��z��#��z��$ 3��._��� $��Center=�$��Center=�$
��True�� P�  �@J�IsMouseOver$
 True��. ��� $ border�� � �� �#FFB84D�� $ border�� � �� �#FFB84DP�  � ��$
 True��. ��� $ border�� � �� �#FF9800�� $ border�� � �� �#FF9800P�  � {�$ False��. ��� $ border�� �@J�Opacity$	 0.5Q��� "
 ��.���  � ��
 �������  � ��
 ���� ��  � ��$ 0q���  � ��$ 32����  � ��$ 32����  � ��$
 Bold"���  �@�Cursor$
 Hand����  � �� �� " ��.R��� $ border��#��z��$ 0��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver$
 True��. ��� $ border�� � �� �#444444P�  � ��$
 True��. ��� $ border�� � �� �#666666Y J� InputBindingsY �� Z �� 	Modifiers$Z Controlf�
[ �� Key$[ S��\ �� Command\ �� *SaveCommand+.��� -   $��RootGrid��$��Stretch=�$��Stretch=�.+��� #��[ #��[ $��1q�$ 10��$��Stretch=�$��Stretch=�$
}�True��._�]� $
��True��.+��� $	��Top=�#��[ $��32��$ 	12,12,0,0��._�� / �� $��* ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� -   $��ManyWeapons��
�������$
��Bold"�$��Center=�$��10,0,0,0q��� -   $��1��#��[9 .���� $��Segoe MDL2 Assets)�$	����$��14(��� -   $��2��#��[9 .���� $��Segoe MDL2 Assets)�$	����$��14(��� -   $��3��#��[9 $��0,0,16,0q�.���� $��Segoe MDL2 Assets)�$	����$��14(�
��� E��o� $	��Top=�#��[% ���� "
 m�#< [7 .@�m� $
��File��.@�m� $��Recents������ *RecentWeapons+���� .R��� ����  : FileNameOnlyConverter] �� 	Converter#] [: ���� "
 m�#< [7 .���  �@m�Command �� *DataContext.OpenRecentCommand+ �� 
 Window��  �@m�CommandParameter �� m� $��About��.@�m� -   $��View Changelog���� #��[ $��40��$	��Top=�#��[ $��0,0,0,1q�._�� / �� $��* ��� $
��Auto ��� $
��Auto �.+��� $��Center=�$��10,0,0,0q��� $�Loaded weaponfile: ��
������� �� $
��Bold"�
���������� *CurrentWeaponName+�� $��1��$
��20,0q�#��[ $��12(�$��Center=�$
��Bold"����� *
AppVersion+�� $��2��$	��100��$��28��$��	10,0,10,0q�$��Center=�#��[8 ���� *SaveButtonText+���� *SaveCommand+���� *SaveButtonBackground+���� *SaveButtonBackground+� / �� $	��200 ��� $��* �.+�� $��0��.+��� #��[ $ 0,0,0,10���� #��[ $��0,0,1,0q�
������ �� 
������ $��0q�#��[ ���� *
Sections+^ �� SelectedItem^ �� *SelectedSection+���� "
 ��.���  � ��
 ���� ��  � ��$ Stretch=���  � ��$ Center=���  � ��$ 5q���  � ��$ 2q���  �@�Cursor$
 Hand����  � �� �� " ��.R��� #��z��$ 4��._��� $��Stretch=�$��Center=�$��4q� P�  �@��
IsSelected$
 True��. ���  � �� �#FF9800��  � ��
 �   �P�  �@J�IsMouseOver$
 True��. ���  � �� �#FFB84D��  � ��
 �   ����� .R��� $ 
Horizontal=�$��Center=�.+��� $��18(�$��4q�$��Center=����� *Icon+�� $��10,0,0,0q�$��Center=����� *Title+�� $��1��#��[ $��Stretch=�$��Stretch=�._��� $��Stretch=�$��Stretch=����� *SelectedSection.View+