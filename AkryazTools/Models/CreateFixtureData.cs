using AkryazTools.Models;
using AkryazTools.ViewModels;
using Autodesk.Revit.DB;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Akryaz.Models
{
    public static class CreateFixtureData
    {
        public static ImportedCadFilesModel ImportedCadFile { get; set; }
        public static List<CadLayersViewModel> CadLayers { get; set; }
        public static FamilySymbol SelectedFamilySymbol { get; set; }

    }
}
