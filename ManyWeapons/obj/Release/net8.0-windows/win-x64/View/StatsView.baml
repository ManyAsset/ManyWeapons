   M S B A M L   `   `   `  ����   ManyWeapons     ManyWeapons.View.StatsView   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     $��Stretch=�$��Stretch=�  � 	Resources     DarkBackground  	DarkPanel  AccentOrange  	TextColor  DarkBackgroundBrush �� Color  DarkPanelBrush  AccentBrush  	TextBrush  DarkTabItemContent �� 
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
Horizontal=�$��0��$��1��#* z1 #, z2 #. z3 #y�z4 �� 8��  $��1��$��1��.���� $��5q�#��[ #��[ $��Stretch=�$��Stretch=�.@��� $��Damage��.���� $
��Auto=�.���� $��15q�.+��� $��General Damage��$��0,0,0,10q�.��� $��10q�( �� $	��200 ��� $��* ��� $	��200 ��� $��* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��damage��$��0��$��0��#��[	 �� $��0��$��1������ *
[damage]+$ TwoWay=��� $��	minDamage��$��1��$��0��#��[	 �� $��1��$��1������ *[minDamage]+$ TwoWay=��� $��maxDamageRange��$��2��$��0��#��[	 �� $��2��$��1������ *[maxDamageRange]+$ TwoWay=��� $��minDamageRange��$��3��$��0��#��[	 �� $��3��$��1������ *[minDamageRange]+$ TwoWay=��� $��Player / Melee Damage��$��0,0,0,10q�.��� $��10q�( �� $	��200 ��� $��* ��� $	��200 ��� $��* � �� $
��Auto �.+��� $��playerDamage��$��0��$��0��#��[	 �� $��0��$��1������ *[playerDamage]+$ TwoWay=��� $��meleeDamage��$��0��$��2��#��[	 �� $��0��$��3������ *[meleeDamage]+$ TwoWay=��� $��Location Damage��$��Stretch=�.��� $��5q�$��Stretch=�( �� $��2* ��� $��1* ��� $��2* ��� $��1* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $
��None��$��0��$��0��#��[	 �� $��0��$��1������ *	[locNone]+$ TwoWay=��� $��Helmet��$��1��$��0��#��[	 �� $��1��$��1������ *[locHelmet]+$ TwoWay=��� $
��Head��$��2��$��0��#��[	 �� $��2��$��1������ *	[locHead]+$ TwoWay=��� $
��Neck��$��3��$��0��#��[	 �� $��3��$��1������ *	[locNeck]+$ TwoWay=��� $��Upper Torso��$��4��$��0��#��[	 �� $��4��$��1������ *[locTorsoUpper]+$ TwoWay=��� $��Lower Torso��$��5��$��0��#��[	 �� $��5��$��1������ *[locTorsoLower]+$ TwoWay=��� $��Upper Right Arm��$��6��$��0��#��[	 �� $��6��$��1������ *[locRightArmUpper]+$ TwoWay=��� $��Lower Right Arm��$��7��$��0��#��[	 �� $��7��$��1������ *[locRightArmLower]+$ TwoWay=��� $��
Right Hand��$��8��$��0��#��[	 �� $��8��$��1������ *[locRightHand]+$ TwoWay=��� $��Left Arm��$��0��$��2��#��[	 �� $��0��$��3������ *[locLeftArmUpper]+$ TwoWay=��� $��Lower Left Arm��$��1��$��2��#��[	 �� $��1��$��3������ *[locLeftArmLower]+$ TwoWay=��� $��Upper Right Leg��$��2��$��2��#��[	 �� $��2��$��3������ *[locRightLegUpper]+$ TwoWay=��� $��Lower Right Leg��$��3��$��2��#��[	 �� $��3��$��3������ *[locRightLegLower]+$ TwoWay=��� $��
Right Foot��$��4��$��2��#��[	 �� $��4��$��3������ *[locRightFoot]+$ TwoWay=��� $��Upper Left Leg��$��5��$��2��#��[	 �� $��5��$��3������ *[locLeftLegUpper]+$ TwoWay=��� $��Lower Left Leg��$��6��$��2��#��[	 �� $��6��$��3������ *[locLeftLegLower]+$ TwoWay=��� $��	Left Foot��$��7��$��2��#��[	 �� $��7��$��3������ *[locLeftFoot]+$ TwoWay=��� $	��Gun��$��8��$��2��#��[	 �� $��8��$��3������ *
[locGun]+$ TwoWay=��� $��	Ammo/Clip��.���� $
��Auto=�.���� $��10q�$ Vertical=�.+��� $��Ammo Settings��$��0,0,0,10q�.��� $��10q�( �� $	��200 ��� $��* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��ammoName��$��0��$��0��#��[	 �� $��0��$��1������ *
[ammoName]+$ TwoWay=��� $��clipName��$��1��$��0��#��[	 �� $��1��$��1������ *
[clipName]+$ TwoWay=��� $��maxAmmo��$��2��$��0��#��[	 �� $��2��$��1������ *	[maxAmmo]+$ TwoWay=��� $��	startAmmo��$��3��$��0��#��[	 �� $��3��$��1������ *[startAmmo]+$ TwoWay=��� $��clipSize��$��4��$��0��#��[	 �� $��4��$��1������ *
[clipSize]+$ TwoWay=��� $��	shotCount��$��5��$��0��#��[	 �� $��5��$��1������ *[shotCount]+$ TwoWay=��� $��lowAmmoWarningThreshold��$��6��$��0��#��[	 �� $��6��$��1������ *[lowAmmoWarningThreshold]+$ TwoWay=��� $��reloadStartAdd��$��7��$��0��#��[	 �� $��7��$��1������ *[reloadStartAdd]+$ TwoWay=��� $��reloadAmmoAdd��$��8��$��0��#��[	 �� $��8��$��1������ *[reloadAmmoAdd]+$ TwoWay=��� $��Dropped Ammo Values��$��0,0,0,10q�.��� $��10q�( �� $	��200 ��� $��* � �� $
��Auto ��� $
��Auto �.+��� $��dropAmmoMax��$��0��$��0��#��[	 �� $��0��$��1������ *[dropAmmoMax]+$ TwoWay=��� $��dropAmmoMin��$��1��$��0��#��[	 �� $��1��$��1������ *[dropAmmoMin]+$ TwoWay=��� $��Display Options��.���� $��10q�.+��� $ ��cancelAutoHolsterWhenEmpty�� �� *[cancelAutoHolsterWhenEmpty]+$ TwoWay=� $ StringToBoolConverter5 �� 	Converter#5 [$ �� $ ��suppressAmmoReserveDisplay�� �� *[suppressAmmoReserveDisplay]+$ TwoWay=�#5 [$ �� $��Movement��.���� $
��Auto=�.���� $��10q�.+��� $��ADS Settings��$��0,0,0,10q�.��A� 6 A� Columns$6 6��$��5q�.+��� $��Trans In��#��[	 �� ���� *[adsTransInTime]+$ TwoWay=��� $��	Trans Out��#��[	 �� ���� *[adsTransOutTime]+$ TwoWay=��� $��Trans Blend��#��[	 �� ���� *[adsTransBlendTime]+$ TwoWay=��� $��Reload Trans��#��[	 �� ���� *[adsReloadTransTime]+$ TwoWay=��� $��Zoom FOV��#��[	 �� ���� *[adsZoomFov]+$ TwoWay=��� $��Zoom In��#��[	 �� ���� *[adsZoomInFrac]+$ TwoWay=��� $��Zoom Out��#��[	 �� ���� *[adsZoomOutFrac]+$ TwoWay=��� $��	Aim Pitch��#��[	 �� ���� *[adsAimPitch]+$ TwoWay=��� $��Crosshair In Frac��#��[	 �� ���� *[adsCrosshairInFrac]+$ TwoWay=��� $��Crosshair Out Frac��#��[	 �� ���� *[adsCrosshairOutFrac]+$ TwoWay=��� $��
Bob Factor��#��[	 �� ���� *[adsBobFactor]+$ TwoWay=��� $��View Bob Multiplier��#��[	 �� ���� *[adsViewBobMult]+$ TwoWay=��� $��Min View Error��#��[	 �� ���� *[adsViewErrorMin]+$ TwoWay=��� $��Max View Error��#��[	 �� ���� *[adsViewErrorMax]+$ TwoWay=��� $��Stand Settings��$��0,0,0,10q�.��A� $6 6��$��5q�.+��� $��Move X��#��[	 �� ���� *[standMoveF]+$ TwoWay=��� $��Move Y��#��[	 �� ���� *[standMoveR]+$ TwoWay=��� $��Move Z��#��[	 �� ���� *[standMoveU]+$ TwoWay=��� $��Rotate X��#��[	 �� ���� *[standRotP]+$ TwoWay=��� $��Rotate Y��#��[	 �� ���� *[standRotY]+$ TwoWay=��� $��Rotate Z��#��[	 �� ���� *[standRotR]+$ TwoWay=��� $��	Move Rate��#��[	 �� ���� *[posMoveRate]+$ TwoWay=��� $��Rotate Rate��#��[	 �� ���� *[posRotRate]+$ TwoWay=��� $��	Min Speed��#��[	 �� ���� *[standMoveMinSpeed]+$ TwoWay=��� $��Prone Settings��$��0,0,0,10q�.��A� $6 6��$��5q�.+��� $��Move X��#��[	 �� ���� *[proneMoveF]+$ TwoWay=��� $��Move Y��#��[	 �� ���� *[proneMoveR]+$ TwoWay=��� $��Move Z��#��[	 �� ���� *[proneMoveU]+$ TwoWay=��� $��Rotate X��#��[	 �� ���� *[proneRotP]+$ TwoWay=��� $��Rotate Y��#��[	 �� ���� *[proneRotY]+$ TwoWay=��� $��Rotate Z��#��[	 �� ���� *[proneRotR]+$ TwoWay=��� $��Offset X��#��[	 �� ���� *[proneOfsF]+$ TwoWay=��� $��Offset Y��#��[	 �� ���� *[proneOfsR]+$ TwoWay=��� $��Offset Z��#��[	 �� ���� *[proneOfsU]+$ TwoWay=��� $��	Move Rate��#��[	 �� ���� *[posProneMoveRate]+$ TwoWay=��� $��Rotate Rate��#��[	 �� ���� *[posProneRotRate]+$ TwoWay=��� $��	Min Speed��#��[	 �� ���� *[proneRotMinSpeed]+$ TwoWay=��� $��Crouch Settings��$��0,0,0,10q�.��A� $6 6��$��5q�.+��� $��Move X��#��[	 �� ���� *[duckedMoveF]+$ TwoWay=��� $��Move Y��#��[	 �� ���� *[duckedMoveR]+$ TwoWay=��� $��Move Z��#��[	 �� ���� *[duckedMoveU]+$ TwoWay=��� $��Rotate X��#��[	 �� ���� *[duckedRotP]+$ TwoWay=��� $��Rotate Y��#��[	 �� ���� *[duckedRotY]+$ TwoWay=��� $��Rotate Z��#��[	 �� ���� *[duckedRotR]+$ TwoWay=��� $��Offset X��#��[	 �� ���� *[duckedOfsF]+$ TwoWay=��� $��Offset Y��#��[	 �� ���� *[duckedOfsR]+$ TwoWay=��� $��Offset Z��#��[	 �� ���� *[duckedOfsU]+$ TwoWay=��� $��Move Min Speed��#��[	 �� ���� *[duckedMoveMinSpeed]+$ TwoWay=��� $�� Rotate Min Speed��#��[	 �� ���� *[duckedRotMinSpeed]+$ TwoWay=��� $��Idle Settings��$��0,0,0,10q�.��A� $6 4��$��5q�.+��� $	��Hip��#��[	 �� ���� *[hipIdleAmount]+$ TwoWay=��� $��Speed��#��[	 �� ���� *[hipIdleSpeed]+$ TwoWay=��� $	��ADS��#��[	 �� ���� *[adsIdleAmount]+$ TwoWay=��� $��Speed��#��[	 �� ���� *[adsIdleSpeed]+$ TwoWay=��� $"��Additional Movement Settings��$��0,0,0,10q�.��A� $6 4��$��5q�.+��� $��Crouch Factor��#��[	 �� ���� *[idleCrouchFactor]+$ TwoWay=��� $��Prone Factor��#��[	 �� ���� *[idleProneFactor]+$ TwoWay=��� $��Move Speed Scale��#��[	 �� ���� *[moveSpeedScale]+$ TwoWay=��� $��ADS Move Speed Scale��#��[	 �� ���� *[adsMoveSpeedScale]+$ TwoWay=��� $��Sprint Duration Scale��#��[	 �� ���� *[sprintDurationScale]+$ TwoWay=��� $��Spread��.���� $
��Auto=�.���� $��15q�.+��� $��Spread Settings��$��10q�.��� $��10q�( �� $	��250 ��� $	��100 ��� $	��250 ��� $	��100 � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��	adsSpread��$��0��$��0��#��[	 $��Right=��� $��0��$��1������ *[adsSpread]+$ TwoWay=��� $��hipSpreadStandMin��$��1��$��0��#��[	 $��Right=��� $��1��$��1������ *[hipSpreadStandMin]+$ TwoWay=��� $��hipSpreadDuckedMin��$��2��$��0��#��[	 $��Right=��� $��2��$��1������ *[hipSpreadDuckedMin]+$ TwoWay=��� $��hipSpreadProneMin��$��3��$��0��#��[	 $��Right=��� $��3��$��1������ *[hipSpreadProneMin]+$ TwoWay=��� $��hipSpreadFireAdd��$��4��$��0��#��[	 $��Right=��� $��4��$��1������ *[hipSpreadFireAdd]+$ TwoWay=��� $��hipSpreadDecayRate��$��5��$��0��#��[	 $��Right=��� $��5��$��1������ *[hipSpreadDecayRate]+$ TwoWay=��� $��autoAimRange��$��6��$��0��#��[	 $��Right=��� $��6��$��1������ *[autoAimRange]+$ TwoWay=��� $��aimAssistRange��$��7��$��0��#��[	 $��Right=��� $��7��$��1������ *[aimAssistRange]+$ TwoWay=��� $��aimAssistRangeAds��$��8��$��0��#��[	 $��Right=��� $��8��$��1������ *[aimAssistRangeAds]+$ TwoWay=��� $��hipSpreadStandMax��$��1��$��2��#��[	 $��Right=��� $��1��$��3������ *[hipSpreadMax]+$ TwoWay=��� $��hipSpreadDuckedMax��$��2��$��2��#��[	 $��Right=��� $��2��$��3������ *[hipSpreadDuckedMax]+$ TwoWay=��� $��hipSpreadProneMax��$��3��$��2��#��[	 $��Right=��� $��3��$��3������ *[hipSpreadProneMax]+$ TwoWay=��� $��hipSpreadTurnAdd��$��4��$��2��#��[	 $��Right=��� $��4��$��3������ *[hipSpreadTurnAdd]+$ TwoWay=��� $��hipSpreadDuckedDecay��$��5��$��2��#��[	 $��Right=��� $��5��$��3������ *[hipSpreadDuckedDecay]+$ TwoWay=��� $��hipSpreadMoveAdd��$��6��$��2��#��[	 $��Right=��� $��6��$��3������ *[hipSpreadMoveAdd]+$ TwoWay=��� $��hipSpreadProneDecay��$��7��$��2��#��[	 $��Right=��� $��7��$��3������ *[hipSpreadProneDecay]+$ TwoWay=��� $��Spread��.���� $
��Auto=�.���� $��15q�.+��� $��Spread Settings��$��10q�$��Stretch=�.��� $��10q�$��Stretch=�( �� $��2* ��� $��3* ��� $��2* ��� $��3* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��	adsSpread��$��0��$��0��#��[	 $��Right=��� $��0��$��1������ *[adsSpread]+$ TwoWay=��� $��hipSpreadStandMin��$��1��$��0��#��[	 $��Right=��� $��1��$��1������ *[hipSpreadStandMin]+$ TwoWay=��� $��hipSpreadDuckedMin��$��2��$��0��#��[	 $��Right=��� $��2��$��1������ *[hipSpreadDuckedMin]+$ TwoWay=��� $��hipSpreadProneMin��$��3��$��0��#��[	 $��Right=��� $��3��$��1������ *[hipSpreadProneMin]+$ TwoWay=��� $��hipSpreadFireAdd��$��4��$��0��#��[	 $��Right=��� $��4��$��1������ *[hipSpreadFireAdd]+$ TwoWay=��� $��hipSpreadDecayRate��$��5��$��0��#��[	 $��Right=��� $��5��$��1������ *[hipSpreadDecayRate]+$ TwoWay=��� $��autoAimRange��$��6��$��0��#��[	 $��Right=��� $��6��$��1������ *[autoAimRange]+$ TwoWay=��� $��aimAssistRange��$��7��$��0��#��[	 $��Right=��� $��7��$��1������ *[aimAssistRange]+$ TwoWay=��� $��aimAssistRangeAds��$��8��$��0��#��[	 $��Right=��� $��8��$��1������ *[aimAssistRangeAds]+$ TwoWay=��� $��hipSpreadStandMax��$��1��$��2��#��[	 $��Right=��� $��1��$��3������ *[hipSpreadMax]+$ TwoWay=��� $��hipSpreadDuckedMax��$��2��$��2��#��[	 $��Right=��� $��2��$��3������ *[hipSpreadDuckedMax]+$ TwoWay=��� $��hipSpreadProneMax��$��3��$��2��#��[	 $��Right=��� $��3��$��3������ *[hipSpreadProneMax]+$ TwoWay=��� $��hipSpreadTurnAdd��$��4��$��2��#��[	 $��Right=��� $��4��$��3������ *[hipSpreadTurnAdd]+$ TwoWay=��� $��hipSpreadDuckedDecay��$��5��$��2��#��[	 $��Right=��� $��5��$��3������ *[hipSpreadDuckedDecay]+$ TwoWay=��� $��hipSpreadMoveAdd��$��6��$��2��#��[	 $��Right=��� $��6��$��3������ *[hipSpreadMoveAdd]+$ TwoWay=��� $��hipSpreadProneDecay��$��7��$��2��#��[	 $��Right=��� $��7��$��3������ *[hipSpreadProneDecay]+$ TwoWay=��� $
��Kick��.���� $
��Auto=�.���� $��15q�.+��� $��Gun Kick Settings��$��10q�$��Stretch=�.��� $��10q�$��Stretch=�( �� $��2* ��� $��3* ��� $��2* ��� $��3* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $"��hipGunKickReducedKickBullets��$��0��$��0��#��[	 $��Right=��� $��0��$��1������ * [hipGunKickReducedKickBullets]+$ TwoWay=��� $"��hipGunKickReducedKickPercent��$��1��$��0��#��[	 $��Right=��� $��1��$��1������ * [hipGunKickReducedKickPercent]+$ TwoWay=��� $��hipGunKickAccel��$��2��$��0��#��[	 $��Right=��� $��2��$��1������ *[hipGunKickAccel]+$ TwoWay=��� $��hipGunKickSpeedMax��$��3��$��0��#��[	 $��Right=��� $��3��$��1������ *[hipGunKickSpeedMax]+$ TwoWay=��� $"��adsGunKickReducedKickBullets��$��4��$��0��#��[	 $��Right=��� $��4��$��1������ * [adsGunKickReducedKickBullets]+$ TwoWay=��� $"��adsGunKickReducedKickPercent��$��5��$��0��#��[	 $��Right=��� $��5��$��1������ * [adsGunKickReducedKickPercent]+$ TwoWay=��� $��hipGunKickYawMin��$��0��$��2��#��[	 $��Right=��� $��0��$��3������ *[hipGunKickYawMin]+$ TwoWay=��� $��hipGunKickYawMax��$��1��$��2��#��[	 $��Right=��� $��1��$��3������ *[hipGunKickYawMax]+$ TwoWay=��� $��hipGunKickStaticDecay��$��2��$��2��#��[	 $��Right=��� $��2��$��3������ *[hipGunKickStaticDecay]+$ TwoWay=��� $��hipGunKickSpeedDecay��$��3��$��2��#��[	 $��Right=��� $��3��$��3������ *[hipGunKickSpeedDecay]+$ TwoWay=��� $��hipGunKickPitchMin��$��4��$��2��#��[	 $��Right=��� $��4��$��3������ *[hipGunKickPitchMin]+$ TwoWay=��� $��hipGunKickPitchMax��$��5��$��2��#��[	 $��Right=��� $��5��$��3������ *[hipGunKickPitchMax]+$ TwoWay=��� $��gunMaxPitch��$��6��$��2��#��[	 $��Right=��� $��6��$��3������ *[gunMaxPitch]+$ TwoWay=��� $��	gunMaxYaw��$��7��$��2��#��[	 $��Right=��� $��7��$��3������ *[gunMaxYaw]+$ TwoWay=��� $��adsGunKickAccel��$��8��$��2��#��[	 $��Right=��� $��8��$��3������ *[adsGunKickAccel]+$ TwoWay=��� $��adsGunKickSpeedMax��$��9��$��2��#��[	 $��Right=��� $��9��$��3������ *[adsGunKickSpeedMax]+$ TwoWay=��� $��View Kick Settings��$��10q�$��Stretch=�.��� $��10q�$��Stretch=�( �� $��2* ��� $��3* ��� $��2* ��� $��3* � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��hipViewKickPitchMin��$��0��$��0��#��[	 $��Right=��� $��0��$��1������ *[hipViewKickPitchMin]+$ TwoWay=��� $��hipViewKickPitchMax��$��1��$��0��#��[	 $��Right=��� $��1��$��1������ *[hipViewKickPitchMax]+$ TwoWay=��� $��hipViewKickYawMin��$��2��$��0��#��[	 $��Right=��� $��2��$��1������ *[hipViewKickYawMin]+$ TwoWay=��� $��hipViewKickYawMax��$��3��$��0��#��[	 $��Right=��� $��3��$��1������ *[hipViewKickYawMax]+$ TwoWay=��� $��hipViewKickCenterSpeed��$��4��$��0��#��[	 $��Right=��� $��4��$��1������ *[hipViewKickCenterSpeed]+$ TwoWay=��� $��adsViewKickPitchMin��$��0��$��2��#��[	 $��Right=��� $��0��$��3������ *[adsViewKickPitchMin]+$ TwoWay=��� $��adsViewKickPitchMax��$��1��$��2��#��[	 $��Right=��� $��1��$��3������ *[adsViewKickPitchMax]+$ TwoWay=��� $��adsViewKickYawMin��$��2��$��2��#��[	 $��Right=��� $��2��$��3������ *[adsViewKickYawMin]+$ TwoWay=��� $��adsViewKickYawMax��$��3��$��2��#��[	 $��Right=��� $��3��$��3������ *[adsViewKickYawMax]+$ TwoWay=��� $��adsViewKickCenterSpeed��$��4��$��2��#��[	 $��Right=��� $��4��$��3������ *[adsViewKickCenterSpeed]+$ TwoWay=�