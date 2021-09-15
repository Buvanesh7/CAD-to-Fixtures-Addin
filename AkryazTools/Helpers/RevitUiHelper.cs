using System;
using System.Collections.Generic;
using System.Linq;
using Autodesk.Revit.UI;

namespace Akryaz.Helpers
{
    public static class RevitUiHelper
    {
        public static bool AddRibbonTab(UIControlledApplication application, string tabName)
        {
            try
            {
                application.CreateRibbonTab(tabName);
            }
            catch
            {
                return false;
            }
            return true;
        }

        public static RibbonPanel AddRibbonPanel(UIControlledApplication application, string tabName, string panelName, bool addSeperator)
        {
            List<RibbonPanel> panels = application.GetRibbonPanels(tabName);
            RibbonPanel panel = panels.Where(x => x.Name == panelName).FirstOrDefault();

            if (panel == null)
            {
                panel = application.CreateRibbonPanel(tabName, panelName);
            }
            else if (addSeperator)
            {
                panel.AddSeparator();
            }

            return panel;
        }


        public static PushButton AddPushButton(RibbonPanel panel, string name, string title, Type targetClass, string path)
        {
            var button = panel.AddItem(new PushButtonData(name, title, path, targetClass.FullName)) as PushButton;
            return button;
        }
    }
}