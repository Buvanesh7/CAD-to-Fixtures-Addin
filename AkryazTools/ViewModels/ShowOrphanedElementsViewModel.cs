using Autodesk.Revit.DB;
using GalaSoft.MvvmLight;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AkryazTools.ViewModels
{
    public class ShowOrphanedElementsViewModel : ViewModelBase
    {
        private Document _document;

        public ShowOrphanedElementsViewModel(Document document)
        {
            _document = document;
        }
    }
}
