   M S B A M L   `   `   `  ���� A  =BimEra, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:BimEra.ViewsBimEra.Views  -    'BimEra.Views.CreateSmokeDetectorsWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  &localclr-namespace:BimEra.Views    � Title$   CreateSmokeDetectorsWindow��$	��275��$	��550�� � WindowStartupLocation$ CenterScreen=� � 	Resources -   'BimEra.Views.CreateSmokeDetectorsWindow �� 
TargetType �� 	Resources �� MergedDictionaries �� Source �� Property �� Value   PrimaryHueMidBrush  MaterialDesignPaper	 �� 
TargetType(  "MaterialDesignThemes.Wpf.ColorZone
  Name   Mode+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth � ColumnDefinitions $  MaterialDesignHeadline5TextBlock �� Orientation'  !System.Windows.Shell.WindowChrome   IsHitTestVisibleInChrome'  !MaterialDesignThemes.Wpf.PackIcon   Kind)  #MaterialDesignThemes.Wpf.DialogHost   CloseOnClickAway   
Identifier � RowDefinitions �� IsTextSearchEnabled  �� IsTextSearchCaseSensitive �� DisplayMemberPath �� SelectedItem �� 
GroupStyle(  "System.Windows.Controls.GroupStyle   HeaderTemplate $  MaterialDesignSubtitle2TextBlock)  #MaterialDesignThemes.Wpf.HintAssist   Hint % !MaterialDesignFloatingHintTextBox �� UpdateSourceTrigger��%a  '        �� "   ��  �� $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?��� $y spack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Lightblue.xaml?��� $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?��� $s mpack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Lime.xaml?�.���  �@�WindowStyle$
 None=���  � ��$ 2 0 2 2q���  � ��# �   ��  � ��# �  ��  � �� �� "	 �.R�� 
�������.+�]� ��. .+�  $
 	colorZone��$	��Top=�$��35��$ 
PrimaryMid=�$ Depth2=�.���  �� $
��Auto ��� $
��Auto ��� $
��Auto ��� �� $
��Auto ��� $��* ��� $
��Auto ��� $
��Auto �.+�(� $��0��$��8��$��30��$��100,0q�.���� #���  $��Center=�$��Center=�$��Place Fixtures��$��5q�
��������� $��7��$ 
Horizontal=�$��Right=�.+��� -    . $��1q�
�������.��  $ WindowMinimize=�
��������� -    . $��1q�
�������.��  $ WindowRestore=�
��������� -    . $��1q�
�������.��  $ WindowClose=�
��������� #��z��#��z��._�� .+�   .  $ MainContent��.���  �� $
��Auto ��� $
��Auto � �� $	��150 ��� $��75 �.+��� $��0��$ Vertical=�$��Center=�$��Center=�.+��� $��10,10,40,10q�$��Pick Family Type��#���  $��Center=��� $��10,10,40,10q�$��Coverage Radius��#���  $��Center=��� $��1��$ Vertical=�$��Center=�$��Center=�.+��� $��10q� .  .  $
 Name��$	��250��$	��Top=����� *	ItemsView+ �� *SelectedSmokeDetectorType+    �� .R��� $��10q�#���  ���� *Name+���� .R��� ���� *Name+�� -   $��10q�$ in mm��#���  $��Center=����� *CoverageRadius+$ PropertyChanged=��� $ 
Horizontal=�$��1��$��2��$��Center=�$��Center=�.+��� $��0,0,20,0q�
�������$��Create Fixtures��$	��300��$��Center=����� *CreateSmokeDetectorsCommand+   WindowChrome      CaptionHeight$ 35Q�   CornerRadius$ 0��   ResizeBorderThickness$ 5q�    GlassFrameThickness$  0q�