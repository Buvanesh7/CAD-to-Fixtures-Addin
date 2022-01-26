using Akryaz.Helpers;
using AkryazTools.Enum;
using Autodesk.Revit.Attributes;
using Autodesk.Revit.DB;
using Autodesk.Revit.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AkryazTools.ExternalCommands
{
    [Transaction(TransactionMode.Manual)]
    public class PreventDeletionCommand : IExternalCommand
    {
        public Result Execute(ExternalCommandData commandData, ref string message, ElementSet elements)
        {
            var uiDocument = commandData.Application.ActiveUIDocument;
            var document = uiDocument.Document;
            var addinId = new AddInId(commandData.Application.ActiveAddInId.GetGUID());
            var updaterId = new UpdaterId(addinId, Guid.Parse("eeff7fa0-e0bc-4522-9ec4-d2c9903067b8"));

            try
            {
                var exsisting = UpdaterRegistry.IsUpdaterRegistered(updaterId, document);

                //RegisterUpdater(updaterId, document);

                var td = CreateTaskDialogWindow();

                var param = document.GetElement("Test Parameter uniquId") as SharedParameterElement;//UI

                var paramFilter = CreateParameterFilter(param, "Sample Value", FilterRuleEnum.equals);//UI

                var deletionUpdater = new DeletionUpdater(updaterId, td);
                UpdaterRegistry.RegisterUpdater(deletionUpdater, document);
                UpdaterRegistry.AddTrigger(deletionUpdater.GetUpdaterId(), paramFilter, Element.GetChangeTypeElementDeletion());


                return Result.Succeeded;
            }
            catch (Exception ex)
            {
                DisplayHelper.Display(ex.Message, Akryaz.Types.TaskDialogType.Error);
                return Result.Failed;
            }
        }
        private TaskDialog CreateTaskDialogWindow()
        {
            var td = new TaskDialog("Prevent Delete Dialog");
            td.MainContent = "Test Message";//UI
            td.CommonButtons = TaskDialogCommonButtons.Ok;

            td.VerificationText = "Check this box to delete the element";

            return td;
        }

        public ElementFilter CreateParameterFilter(SharedParameterElement param, string value, FilterRuleEnum filterRule)
        {
            Double.TryParse(value, out double res1);
            Int32.TryParse(value, out int res2);

            FilterRule parameterRule1 = ParameterFilterRuleFactory.CreateEqualsRule(param.Id, value, true);
            FilterRule parameterRule2 = ParameterFilterRuleFactory.CreateEqualsRule(param.Id, res1, 0);
            FilterRule parameterRule3 = ParameterFilterRuleFactory.CreateEqualsRule(param.Id, res2);


            switch (filterRule)
            {
                case FilterRuleEnum.equals:
                    parameterRule1 = ParameterFilterRuleFactory.CreateEqualsRule(param.Id, value, true);
                    parameterRule2 = ParameterFilterRuleFactory.CreateEqualsRule(param.Id, res1, 0);
                    parameterRule3 = ParameterFilterRuleFactory.CreateEqualsRule(param.Id, res2);
                    break;

                case FilterRuleEnum.doesNotEqual:
                    parameterRule1 = ParameterFilterRuleFactory.CreateNotEqualsRule(param.Id, value, true);
                    parameterRule2 = ParameterFilterRuleFactory.CreateNotEqualsRule(param.Id, res1, 0);
                    parameterRule3 = ParameterFilterRuleFactory.CreateNotEqualsRule(param.Id, res2);
                    break;

                case FilterRuleEnum.contians:
                    parameterRule1 = parameterRule2 = parameterRule3 = ParameterFilterRuleFactory.CreateContainsRule(param.Id, value, true);
                    break;

                case FilterRuleEnum.doesNotContains:
                    parameterRule1 = parameterRule2 = parameterRule3 = ParameterFilterRuleFactory.CreateNotContainsRule(param.Id, value, true);
                    break;

                case FilterRuleEnum.beginsWith:
                    parameterRule1 = parameterRule2 = parameterRule3 = ParameterFilterRuleFactory.CreateBeginsWithRule(param.Id, value, true);
                    break;

                case FilterRuleEnum.doesNotBeginsWith:
                    parameterRule1 = parameterRule2 = parameterRule3 = ParameterFilterRuleFactory.CreateBeginsWithRule(param.Id, value, true);
                    break;

                case FilterRuleEnum.endsWith:
                    parameterRule1 = parameterRule2 = parameterRule3 = ParameterFilterRuleFactory.CreateEndsWithRule(param.Id, value, true);
                    break;

                case FilterRuleEnum.doesNotEndsWith:
                    parameterRule1 = parameterRule2 = parameterRule3 = ParameterFilterRuleFactory.CreateNotEndsWithRule(param.Id, value, true);
                    break;

                case FilterRuleEnum.hasAValue:
                    parameterRule1 = parameterRule2 = parameterRule3 = ParameterFilterRuleFactory.CreateHasValueParameterRule(param.Id);
                    break;

                case FilterRuleEnum.hasNoValue:
                    parameterRule1 = parameterRule2 = parameterRule3 = ParameterFilterRuleFactory.CreateHasNoValueParameterRule(param.Id);
                    break;

                case FilterRuleEnum.isGreaterThan:
                    parameterRule1 = ParameterFilterRuleFactory.CreateGreaterRule(param.Id, value, true);
                    parameterRule2 = ParameterFilterRuleFactory.CreateGreaterRule(param.Id, res1, 0);
                    parameterRule3 = ParameterFilterRuleFactory.CreateGreaterRule(param.Id, res2);
                    break;

                case FilterRuleEnum.isGreaterThanOrEqualTo:
                    parameterRule1 = ParameterFilterRuleFactory.CreateGreaterOrEqualRule(param.Id, value, true);
                    parameterRule2 = ParameterFilterRuleFactory.CreateGreaterOrEqualRule(param.Id, res1, 0);
                    parameterRule3 = ParameterFilterRuleFactory.CreateGreaterOrEqualRule(param.Id, res2);
                    break;

                case FilterRuleEnum.isLessThan:
                    parameterRule1 = ParameterFilterRuleFactory.CreateLessRule(param.Id, value, true);
                    parameterRule2 = ParameterFilterRuleFactory.CreateLessRule(param.Id, res1, 0);
                    parameterRule3 = ParameterFilterRuleFactory.CreateLessRule(param.Id, res2);
                    break;

                case FilterRuleEnum.isLessThanOrEqualTo:
                    parameterRule1 = ParameterFilterRuleFactory.CreateLessOrEqualRule(param.Id, value, true);
                    parameterRule2 = ParameterFilterRuleFactory.CreateLessOrEqualRule(param.Id, res1, 0);
                    parameterRule3 = ParameterFilterRuleFactory.CreateLessOrEqualRule(param.Id, res2);
                    break;

            }

            var pFilter = new ElementParameterFilter(parameterRule1);

            var filterList = new List<ElementFilter> { pFilter };

            if (res1 != 0)
            {
                var pFilter2 = new ElementParameterFilter(parameterRule2);
                filterList.Add(pFilter2);
            }

            if (res2 == 0 || res2 == 1)
            {
                var pFilter3 = new ElementParameterFilter(parameterRule3);
                filterList.Add(pFilter3);
            }

            var finalFilt = new LogicalOrFilter(filterList);

            return finalFilt;

        }
    }

    internal class DeletionUpdater : IUpdater
    {

        private UpdaterId _updaterId;
        private FailureDefinitionId _failureId;
        private static TaskDialog _td;

        public DeletionUpdater(UpdaterId updaterId, TaskDialog td)
        {
            _updaterId = updaterId;
            _failureId = new FailureDefinitionId(new Guid("3675978B-DBD9-4B83-8C6F-B86848556468"));
            _td = td;
        }

        public void Execute(UpdaterData data)
        {
            Document document = data.GetDocument();
            var a = data.GetDeletedElementIds();
            foreach (ElementId id in data.GetDeletedElementIds())
            {
                var tdResult = _td.Show();

                if (!_td.WasVerificationChecked())
                {
                    FailureMessage failureMessage = new FailureMessage(_failureId);
                    failureMessage.SetFailingElement(id);
                    document.PostFailure(failureMessage);
                }

            }
        }

        public string GetAdditionalInformation()
        {
            return "Prevent delete updater";
        }

        public ChangePriority GetChangePriority()
        {
            return ChangePriority.MEPSystems;
        }

        public UpdaterId GetUpdaterId()
        {
            return _updaterId;
        }

        public string GetUpdaterName()
        {
            return "Prevent delete";
        }
    }
}
