   M S B A M L   `   `   `  ���� A  =BimEra, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:BimEra.ViewsBimEra.Views  "    BimEra.Views.AHUReportWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:BimEra.Views     b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � Title$  AHUReportWindow��$	��250��$	��450�� � WindowStartupLocation$ CenterScreen=� � 	Resources "   BimEra.Views.AHUReportWindow �� 
TargetType �� 	Resources �� MergedDictionaries �� Source �� Property �� Value   PrimaryHueMidBrush  MaterialDesignPaper	 �� 
TargetType(  "MaterialDesignThemes.Wpf.ColorZone
  Name   Mode+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth � ColumnDefinitions $  MaterialDesignHeadline5TextBlock �� Orientation'  !System.Windows.Shell.WindowChrome   IsHitTestVisibleInChrome'  !MaterialDesignThemes.Wpf.PackIcon   Kind)  #MaterialDesignThemes.Wpf.DialogHost   CloseOnClickAway   
Identifier � RowDefinitions �� DisplayMemberPath   BooleanToVisibilityConverter �� 	Converter �� SelectedItem $  MaterialDesignSubtitle2TextBlock  InverseBoolToVisConverter��%  '        7  7  7  7  �� "   ��  �� $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?��� $y spack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Lightblue.xaml?��� $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?��� $s mpack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Lime.xaml?�.���  �@�WindowStyle$
 None=���  � ��$ 2 0 2 2q���  � ��# �   ��  � ��# �  ��  � �� �� "	 �.R�� 
�������.+�]� ��. .+�  $
 	colorZone��$	��Top=�$��35��$ 
PrimaryMid=�$ Depth2=�.���  �� $��* ��� $
��Auto �.+�(� $��0��$
��Left=�$��8��$��30��$��100,0q�.���� #���  $��Center=�$
��Left=�$��Generate AHU Report��$��5q�
��������� $��1��$ 
Horizontal=�$��Right=�.+��� -    . $��1q�
�������.��  $ WindowMinimize=�
��������� -    . $��1q�
�������.��  $ WindowRestore=�
��������� -    . $��1q�
�������.��  $ WindowClose=�
��������� #��z��#��z��._�� .+�   .  $ MainContent��.���  �� $��* � �� $��* ��� $��60 �.+��� $ 
Horizontal=�$��10q�.+��� $��10,10,40,10q�$��Center=�#���  $��Right=�
Pick AHU�� Parameter :�� $��10q�$ Definition.Name��$	��200��$��Center=����� *RoomParameters+y��� *IsRoomAvailable+8    �� *SelectedParameter+���� .R��� 8�� ���� *Definition.Name+�� $��10q�$%��No Rooms Available in this file��$��Center=�8�� 
���  ��y��� *IsRoomAvailable+8  �� $ 
Horizontal=�$��1��$��2��$��Center=�.+��� $��0,0,20,0q�
�������$��Browse Excel��$	��200��$��Center=����� *BrowseExcelCommand+   WindowChrome      CaptionHeight$ 35Q�   CornerRadius$ 0��   ResizeBorderThickness$ 5q�   GlassFrameThickness$ 0q�