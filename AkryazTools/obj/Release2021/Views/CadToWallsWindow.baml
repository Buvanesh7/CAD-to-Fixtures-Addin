   M S B A M L   `   `   `  ���� A  =BimEra, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:BimEra.ViewsBimEra.Views  5clr-namespace:BimEra.ViewModelsBimEra.ViewModels  #    BimEra.Views.CadToWallsWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:BimEra.Views     .vmclr-namespace:BimEra.ViewModels     c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � Title$  CadToWallsWindow��$	��600��$	��800�� � WindowStartupLocation$ CenterScreen=� � 	Resources #   BimEra.Views.CadToWallsWindow �� 
TargetType �� 	Resources �� MergedDictionaries �� Source �� Property �� Value   PrimaryHueMidBrush  MaterialDesignPaper	 �� 
TargetType(  "MaterialDesignThemes.Wpf.ColorZone
  Name   Mode+  %MaterialDesignThemes.Wpf.ShadowAssist   ShadowDepth � ColumnDefinitions $  MaterialDesignHeadline5TextBlock �� Orientation'  !System.Windows.Shell.WindowChrome   IsHitTestVisibleInChrome'  !MaterialDesignThemes.Wpf.PackIcon   Kind)  #MaterialDesignThemes.Wpf.DialogHost   CloseOnClickAway   
Identifier � RowDefinitions �� DisplayMemberPath �� SelectedItem.  (System.Windows.Interactivity.Interaction   Triggers/  )System.Windows.Interactivity.EventTrigger   	EventName.	  (System.Windows.Interactivity.TriggerBase 	  Actions6
  0System.Windows.Interactivity.InvokeCommandAction 
  Command'  !MaterialDesignThemes.Wpf.PopupBox   	StaysOpen   PlacementMode   IsPopupOpen   ToggleContent   PopupContent d� 	IsChecked    CornerRadius & "MaterialDesignFloatingActionButton#  MaterialDesignThemes.Wpf.Card! �� TextAlignment" �� TextAlignment# �� UpdateSourceTrigger��%]  '        �� "   ��  �� $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?��� $y spack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Lightblue.xaml?��� $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?��� $s mpack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Accent/MaterialDesignColor.Lime.xaml?�.���  �@�WindowStyle$
 None=���  � ��$ 2 0 2 2q���  � ��# �   ��  � ��# �  ��  � �� �� "	 �.R�� 
�������.+�]� ��. .+�  $
 	colorZone��$	��Top=�$��35��$ 
PrimaryMid=�$ Depth2=�.���  �� $
��Auto ��� $
��Auto ��� $
��Auto ��� �� $
��Auto ��� $��* ��� $
��Auto ��� $
��Auto �.+�(� $��0��$��8��$��30��$��100,0q�.���� #���  $��Center=�$��Center=�$��CAD To Walls��$
��Bold"�$��60(�$��5q�
��������� $��7��$ 
Horizontal=�$��Right=�.+��� -    . $��1q�
�������.��  $ WindowMinimize=�
��������� -    . $��1q�
�������.��  $ WindowRestore=�
��������� -    . $��1q�
�������.��  $ WindowClose=�
��������� #��z��#��z��._�� .+�   .  $ MainContent��.���  �� $
��Auto � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��20q�$��0��$ 
Horizontal=�$��Center=�$��Center=�.+��� $��10q�$��20(�$��Select CAD File��#���  $��Center=��� $��10q�$
 Name��$	��250��$	��Top=����� *ImportedCadFiles+ �� *SelectedCadFile+   $ SelectionChanged��. 
   �� *SelectedCadFileChangedCommand+�� $��10q�$��20(�$��Select Layers��#���  $��Center=�   . $ RightAndAlignTopEdges=�$��10q� �� *IsPopupOpen+   $ SelectSearch=�$��25��$��30��$��Center=�. �� $	��300��$	��250��$
��Auto=�$
��Auto=�.���� ���� *	LayerList+���� Test��.R��� $ 
Horizontal=�.+��� $��5q� �� *	IsChecked+�� $��5q����� *	LayerName+  $
��20,0q�$��0��$��1��$��50��$ 
PrimaryMid=�$	��750��$  5��$��Center=�$��2��.���  �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��1��$��2��$ 
Horizontal=�$��Center=�.+��� $��25(�$��	Map Walls��$��Center=�$��Center=�
�������  $��10,0,0,0q�$
 Wall=�
�������$��25��$��25��$��Center=�$��Center=��� $ 
Horizontal=�$��2��.+��� $��0,0,10,0q�$��2��#���  $��30��$��30��
����������� *AddWallMappingCommand+.��  $
 Plus=�
�������$��25��$��25��$��Center=�$��Center=��� $��	10,0,10,0q�$��2��#���  
�������$��30��$��30������ *RemoveWallMappingCommand+.��  $ Delete=�
�������$��20��$��20��$��Center=�$��Center=�  $	��750��$	��350��$��2��.���� .+��� $ 
Horizontal=�$��10q�.+��� $ 
Horizontal=�.+��� $��Wall Thickness��$��25(�$	��170��$��Center=�$��Center=�$! Center=��� $��(in mm)��$��15(�$��Center=�$��Center=�$! Center=��� $��Tollerence +/-��$��25(�$��10q�$	��200��$��Center=�$��Center=�$! Center=��� $��	Wall Type��$��25(�$��10q�$	��200��$��Center=�$��Center=�$! Center=��� $
��Auto=�$
��Auto=�$	��275��.���� ���� *WallMappings+ �� *SelectedWallmapping+���� .R��� $ 
Horizontal=�.+��� -   $��10q�$	��200��$��Center=�$" Center=����� *WallThickness+$# PropertyChanged=��� -   $��10q�$	��200��$��Center=�$" Center=����� *
Tollerance+�� $��10q�$	��200��$
 Name��$��Center=����� *	WallTypes+ �� *SelectedWallType+�� $ 
Horizontal=�$��3��$��2��$��Center=�$��Center=�.+��� $��20q�
�������$��Create Walls��$	��300��$��Center=����� *CreateWallsFromCadCommand+$   WindowChrome$   %   CaptionHeight$% 35Q�&   CornerRadius$& 0��'   ResizeBorderThickness$' 5q�(   GlassFrameThickness$( 0q�