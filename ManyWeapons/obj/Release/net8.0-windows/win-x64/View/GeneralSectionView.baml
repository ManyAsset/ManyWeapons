   M S B A M L   `   `   `  ���� F  BManyWeapons, Version=1.0.2.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:ManyWeapons.ConvertersManyWeapons.Converters  )    #ManyWeapons.View.GeneralSectionView   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Aav2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     7local1$clr-namespace:ManyWeapons.Converters     $
��auto��$
��Auto��  � 	Resources     DarkBackground  	DarkPanel  AccentOrange  	TextColor  DarkBackgroundBrush �� Color  DarkPanelBrush  AccentBrush  	TextBrush  DarkTabItemContent �� 
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
Horizontal=�$��0��$��1��#* z1 #, z2 #. z3 #y�z4 �� 8��  $��1��$��1��.��� $��Stretch=�$��Stretch=�.+��� $��5q�#��[ $��Stretch=�$��Stretch=�.@��� $��Basics��.���� $
��Auto=�.���� $��1q�.+��� $��General Info��$��Stretch=�$��Stretch=�.��� $��3q�( �� $	��200 ��� $��* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��displayName��$��0��$��0��#��[	 �� $��0��$��1������ *[displayName]+$ TwoWay=�5 �� UpdateSourceTrigger$5 PropertyChanged=��� $��modeName��$��1��$��0��#��[	 �� $��1��$��1������ *
[modeName]+$ TwoWay=��� $��	altWeapon��$��2��$��0��#��[	 �� $��2��$��1������ *[altWeapon]+$ TwoWay=��� $��playerAnimType��$��3��$��0��#��[	 �� $��3��$��1��
6 � Tag$6 playerAnimType��7 �� SelectedItem7 �� *[playerAnimType]+$ TwoWay=���`�  $ EnumBindingConverter8 `� 	Converter#8 [$ .1��� $	 Tag� �� *Self+�� �� $��inventoryType��$��4��$��0��#��[	 �� $��4��$��1��$6 inventoryType��7 �� *[inventoryType]+$ TwoWay=���`� #8 [$ .1��� $	 Tag� �� *Self+�� �� $��
weaponType��$��5��$��0��#��[	 �� $��5��$��1��$6 
weaponType��7 �� *[weaponType]+$ TwoWay=���`� #8 [$ .1��� $	 Tag� �� *Self+�� �� $��weaponClass��$��6��$��0��#��[	 �� $��6��$��1��$6 weaponClass��7 �� *[weaponClass]+$ TwoWay=���`� #8 [$ .1��� $	 Tag� �� *Self+�� �� $��penetrateType��$��7��$��0��#��[	 �� $��7��$��1��$6 penetrateType��7 �� *[penetrateType]+$ TwoWay=���`� #8 [$ .1��� $	 Tag� �� *Self+�� �� $��
impactType��$��8��$��0��#��[	 �� $��8��$��1��$6 
impactType��7 �� *[impactType]+$ TwoWay=���`� #8 [$ .1��� $	 Tag� �� *Self+�� �� $��fireType��$��9��$��0��#��[	 �� $��9��$��1��$6 fireType��7 �� *
[fireType]+$ TwoWay=���`� #8 [$ .1��� $	 Tag� �� *Self+�� �� $��Weapon Settings��.��A� 9 A� Columns$9 3��$��5q�.+��� $��rifleBullet�� �� *[rifleBullet]+$ TwoWay=� % StringToBoolConverter: �� 	Converter#: [% �� $��armorPiercing�� �� *[armorPiercing]+$ TwoWay=�#: [% �� $��
boltAction�� �� *[boltAction]+$ TwoWay=�#: [% �� $��aimDownSight�� �� *[aimDownSight]+$ TwoWay=�#: [% �� $��rechamberWhileAds�� �� *[rechamberWhileAds]+$ TwoWay=�#: [% �� $��adsFire�� �� *	[adsFire]+$ TwoWay=�#: [% �� $��noPartialReload�� �� *[noPartialReload]+$ TwoWay=�#: [% �� $��segmentedReload�� �� *[segmentedReload]+$ TwoWay=�#: [% �� $��noAdsWhenMagEmpty�� �� *[noAdsWhenMagEmpty]+$ TwoWay=�#: [% �� $ ��cancelAutoHolsterWhenEmpty�� �� *[cancelAutoHolsterWhenEmpty]+$ TwoWay=�#: [% �� $ ��suppressAmmoReserveDisplay�� �� *[suppressAmmoReserveDisplay]+$ TwoWay=�#: [% �� $!��laserSightDuringNightvision�� �� *[laserSightDuringNightvision]+$ TwoWay=�#: [% �� $��blocksProne�� �� *[blocksProne]+$ TwoWay=�#: [% �� $��silenced�� �� *
[silenced]+$ TwoWay=�#: [% �� $��avoidDropCleanup�� �� *[avoidDropCleanup]+$ TwoWay=�#: [% �� $��enhanced�� �� *
[enhanced]+$ TwoWay=�#: [% �� $��	twoHanded�� �� *[twoHanded]+$ TwoWay=�#: [% �� $	��HUD��.���� $
��Auto=�$��Disabled=�$��Stretch=�$��Stretch=�.��� $��5q�$��Stretch=�$��Stretch=� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��Icons��$��0��$��Stretch=�$	��Top=�.��� $��14q�$��Stretch=�( �� $	��150 ��� $��* ��� $��80 ��� $	��100 ��� $	��150 � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��hudIcon��$��0��$��0��#��[	 �� $��0��$��1������ *	[hudIcon]+$ TwoWay=��� $��Ratio��$��0��$��2��#��[	 �� $��0��$��3��$��60��7 �� *[hudIconRatio]+$ TwoWay=���O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem �� 6sys&clr-namespace:System;assembly=mscorlib     ; �� Type"; ��.s���1:1����2:1����4:1���� $��killIcon��$��1��$��0��#��[	 �� $��1��$��1������ *
[killIcon]+$ TwoWay=��� $��Ratio��$��1��$��2��#��[	 �� $��1��$��3��$��60��7 �� *[killIconRatio]+$ TwoWay=���1&clr-namespace:System;assembly=mscorlibSystem �� 6sys&clr-namespace:System;assembly=mscorlib     "; ��.s���1:1����2:1����4:1���� $
��Flip��$��1��$��4��$��Center=� �� *[flipKillIcon]+$ TwoWay=�#: [% �� $��dpadIcon��$��2��$��0��#��[	 �� $��2��$��1������ *
[dpadIcon]+$ TwoWay=��� $��Ratio��$��2��$��2��#��[	 �� $��2��$��3��$��60��7 �� *[dpadIconRatio]+$ TwoWay=���1&clr-namespace:System;assembly=mscorlibSystem �� 6sys&clr-namespace:System;assembly=mscorlib     "; ��.s���1:1����2:1����4:1���� $��ammoCounterIcon��$��3��$��0��#��[	 �� $��3��$��1������ *[ammoCounterIcon]+$ TwoWay=��� $��Ratio��$��3��$��2��#��[	 �� $��3��$��3��$��60��7 �� *[ammoCounterIconRatio]+$ TwoWay=���1&clr-namespace:System;assembly=mscorlibSystem �� 6sys&clr-namespace:System;assembly=mscorlib     "; ��.s���1:1����2:1����4:1���� $��ammoCounterClip��$��4��$��0��#��[	 �� $��4��$��1��7 �� *[ammoCounterClip]+$ TwoWay=���1&clr-namespace:System;assembly=mscorlibSystem �� 6sys&clr-namespace:System;assembly=mscorlib     "; ��.s���	AltWeapon����Beltfed����Magazine����None����
Rocket����ShortMagazine����Shotgun���� $��Rumbles��$��1��$��Stretch=�.��� $��5q� �� $
��Auto ��� $
��Auto �( �� $	��150 ��� $��* �.+��� $��
fireRumble��$��0��$��0��#��[	 �� $��0��$��1������ *[fireRumble]+$ TwoWay=��� $��meleeImpactRumble��$��1��$��0��#��[	 �� $��1��$��1������ *[meleeImpactRumble]+$ TwoWay=��� $��Depth of Field��$��2��$��Stretch=�.��� $��5q� �� $
��Auto ��� $
��Auto �( �� $	��150 ��� $��* �.+��� $��adsDofStart��$��0��$��0��#��[	 �� $��0��$��1������ *[adsDofStart]+$ TwoWay=��� $��	adsDofEnd��$��1��$��0��#��[	 �� $��1��$��1������ *[adsDofEnd]+$ TwoWay=��� $��Reticle Settings��$��3��$��Stretch=�.��� $��5q� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �( �� $	��150 ��� $	��200 ��� $	��100 ��� $��* �.+��� $��reticleCenter��$��0��$��0��#��[	 �� $��0��$��1������ *[reticleCenter]+$ TwoWay=��� $
��Size��$��0��$��2��#��[	 �� $��0��$��3������ *[reticleCenterSize]+$ TwoWay=��� $��reticleSide��$��1��$��0��#��[	 �� $��1��$��1������ *[reticleSide]+$ TwoWay=��� $
��Size��$��1��$��2��#��[	 �� $��1��$��3������ *[reticleSideSize]+$ TwoWay=��� $��hipReticleSidePos��$��2��$��0��#��[	 �� $��2��$��1������ *[hipReticleSidePos]+$ TwoWay=��� $��reticleMinOfs��$��3��$��0��#��[	 �� $��3��$��1������ *[reticleMinOfs]+$ TwoWay=��� $��ADS Overlay��$��4��$��Stretch=�.��� $��5q�$��Stretch=� �� $
��Auto ��� $
��Auto ��� $
��Auto �( �� $	��150 ��� $��* ��� $��40 ��� $��60 ��� $��40 ��� $��60 �.+��� $��
adsOverlay��$��0��$��0��#��[	 �� $��0��$��1������ *[adsOverlayShader]+$ TwoWay=��� $��X��$��0��$��2��#��[	 �� $��0��$��3������ *[adsOverlayWidth]+$ TwoWay=��� $��Y��$��0��$��4��#��[	 �� $��0��$��5������ *[adsOverlayHeight]+$ TwoWay=��� $��adsOverlayShaderLowRes��$��1��$��0��#��[	 �� $��1��$��1������ *[adsOverlayShaderLowRes]+$ TwoWay=��� $��adsOverlayReticle��$��2��$��0��#��[	 �� $��2��$��1��7 �� *[adsOverlayReticle]+$ TwoWay=���1&clr-namespace:System;assembly=mscorlibSystem �� 6sys&clr-namespace:System;assembly=mscorlib     "; ��.s���
binoculars����	crosshair����FG42����none����Springfield���� $��	Crosshair��$��5��$��Stretch=�.��� $��5q�$��Stretch=�( �� $	��150 ��� $��* ��� $��* � �� $
��Auto �.+��� $��enemyCrosshairRange��$��0��$��0��#��[	 �� $��0��$��1������ *[enemyCrosshairRange]+$ TwoWay=��� $��crosshairColorChange��$��0��$��2�� �� *[crosshairColorChange]+$ TwoWay=�#: [% �� $��AI��.���� $
��Auto=�.���� $��5q�.+��� $��AI Settings��.��� $��5q�( �� $	��150 ��� $��* ��� $	��150 ��� $��* � �� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��	fightDist��$��0��$��0��#��[	 �� $��0��$��1������ *[fightDist]+$ TwoWay=��� $��maxDist��$��1��$��0��#��[	 �� $��1��$��1������ *	[maxDist]+$ TwoWay=��� $��aiVsAiAccuracyGraph��$��0��$��2��#��[	 �� $��0��$��3������ *[aiVsAiAccuracyGraph]+$ TwoWay=��� $��aiVsPlayerAccuracyGraph��$��1��$��2��#��[	 �� $��1��$��3������ *[aiVsPlayerAccuracyGraph]+$ TwoWay=��� $��AIOverlayDescription��$��2��$��2��#��[	 �� $��2��$��3������ *[AIOverlayDescription]+$ TwoWay=�