using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Windows;
using System.Windows.Interop;
using System.Windows.Media.Imaging;
using Akryaz.AssemblyResolvers;
using Akryaz.ExternalCommands;
using Akryaz.Helpers;
using Akryaz.Properties;
using AkryazTools.ExternalCommands;
using AkryazTools.Properties;
using Autodesk.Revit.UI;


namespace Akryaz
{

    /// <summary>
    /// Main application entry point, representing a revit ExternalApplication
    /// </summary>
    /// <seealso cref="Autodesk.Revit.UI.IExternalApplication" />
    public class Main : IExternalApplication
    {
        /// <summary>
        /// Called when [startup].
        /// </summary>
        /// <param name="application">The application.</param>
        /// <returns></returns>
        /// <exception cref="NotImplementedException"></exception>
        /// 
        private readonly AssemblyResolver _resolver = new AssemblyResolver();
        public Result OnStartup(UIControlledApplication application)
        {

            try
            {
                var thisAssemblyLocation = GetType().Assembly.Location;
                var installDir = Path.GetDirectoryName(GetType().Assembly.Location);
                var dlls = Directory.GetFiles(installDir, "*.dll", SearchOption.AllDirectories);
                var exes = Directory.GetFiles(installDir, "*.exe", SearchOption.AllDirectories);
                var files = new List<string>(dlls);
                files.AddRange(exes);

                _resolver.Register();
                foreach (var file in files)
                {
                    if (file == thisAssemblyLocation || IsRevitAssembly(file))
                        continue;

                    try
                    {
                        Assembly.LoadFrom(file);
                    }
                    catch { /* Ignored */ }

                }
            }

            catch (Exception )
            {
                return Result.Failed;
            }

            try
            {
                string pluginName = application.ActiveAddInId.GetAddInName();
                var tabName = "Akryaz Tools";

                RevitUiHelper.AddRibbonTab(application, tabName);
                string path = Assembly.GetExecutingAssembly().Location;

                RibbonPanel cadPannel = RevitUiHelper.AddRibbonPanel(application, tabName, "CAD", true);
                var cadToFixtureButton = RevitUiHelper.AddPushButton(cadPannel, "cadToFixtureCommand", "CAD To Fixtures", typeof(ShowOrphanedElementsCommand), path);
                cadToFixtureButton.LargeImage = Imaging.CreateBitmapSourceFromHBitmap(Resources.dwg_32x32.GetHbitmap(), IntPtr.Zero, Int32Rect.Empty, BitmapSizeOptions.FromEmptyOptions());
                cadToFixtureButton.Image = Imaging.CreateBitmapSourceFromHBitmap(Resources.dwg_16x16.GetHbitmap(), IntPtr.Zero, Int32Rect.Empty, BitmapSizeOptions.FromEmptyOptions());
                cadToFixtureButton.ToolTip = "Places fixtures from CAD";
        
                return Result.Succeeded;
            }
            catch (Exception)
            {
                return Result.Failed;
            }
        }
            
        private static bool IsRevitAssembly(string filePath)
        {
            var name = Path.GetFileNameWithoutExtension(filePath);
            return name == "AdWindows" || name.Contains("RevitAPI");
        }


        /// <summary>
        /// Called when [shutdown].
        /// </summary>
        /// <param name="application">The application.</param>
        /// <returns></returns>
        /// <exception cref="NotImplementedException"></exception>
        public Result OnShutdown(UIControlledApplication application)
        {
            _resolver.Unregister();
            return Result.Succeeded;
        }

    }
}
