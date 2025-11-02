module Stratosphere.Connect.Rule.ActionsProperty (
        module Exports, ActionsProperty(..), mkActionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.Rule.CreateCaseActionProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.Rule.EventBridgeActionProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.Rule.SendNotificationActionProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.Rule.SubmitAutoEvaluationActionProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.Rule.TaskActionProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.Rule.UpdateCaseActionProperty as Exports
import Stratosphere.ResourceProperties
data ActionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-actions.html>
    ActionsProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-actions.html#cfn-connect-rule-actions-assigncontactcategoryactions>
                     assignContactCategoryActions :: (Prelude.Maybe JSON.Object),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-actions.html#cfn-connect-rule-actions-createcaseactions>
                     createCaseActions :: (Prelude.Maybe [CreateCaseActionProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-actions.html#cfn-connect-rule-actions-endassociatedtasksactions>
                     endAssociatedTasksActions :: (Prelude.Maybe JSON.Object),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-actions.html#cfn-connect-rule-actions-eventbridgeactions>
                     eventBridgeActions :: (Prelude.Maybe [EventBridgeActionProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-actions.html#cfn-connect-rule-actions-sendnotificationactions>
                     sendNotificationActions :: (Prelude.Maybe [SendNotificationActionProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-actions.html#cfn-connect-rule-actions-submitautoevaluationactions>
                     submitAutoEvaluationActions :: (Prelude.Maybe [SubmitAutoEvaluationActionProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-actions.html#cfn-connect-rule-actions-taskactions>
                     taskActions :: (Prelude.Maybe [TaskActionProperty]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-rule-actions.html#cfn-connect-rule-actions-updatecaseactions>
                     updateCaseActions :: (Prelude.Maybe [UpdateCaseActionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionsProperty :: ActionsProperty
mkActionsProperty
  = ActionsProperty
      {haddock_workaround_ = (),
       assignContactCategoryActions = Prelude.Nothing,
       createCaseActions = Prelude.Nothing,
       endAssociatedTasksActions = Prelude.Nothing,
       eventBridgeActions = Prelude.Nothing,
       sendNotificationActions = Prelude.Nothing,
       submitAutoEvaluationActions = Prelude.Nothing,
       taskActions = Prelude.Nothing, updateCaseActions = Prelude.Nothing}
instance ToResourceProperties ActionsProperty where
  toResourceProperties ActionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::Rule.Actions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssignContactCategoryActions"
                              Prelude.<$> assignContactCategoryActions,
                            (JSON..=) "CreateCaseActions" Prelude.<$> createCaseActions,
                            (JSON..=) "EndAssociatedTasksActions"
                              Prelude.<$> endAssociatedTasksActions,
                            (JSON..=) "EventBridgeActions" Prelude.<$> eventBridgeActions,
                            (JSON..=) "SendNotificationActions"
                              Prelude.<$> sendNotificationActions,
                            (JSON..=) "SubmitAutoEvaluationActions"
                              Prelude.<$> submitAutoEvaluationActions,
                            (JSON..=) "TaskActions" Prelude.<$> taskActions,
                            (JSON..=) "UpdateCaseActions" Prelude.<$> updateCaseActions])}
instance JSON.ToJSON ActionsProperty where
  toJSON ActionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssignContactCategoryActions"
                 Prelude.<$> assignContactCategoryActions,
               (JSON..=) "CreateCaseActions" Prelude.<$> createCaseActions,
               (JSON..=) "EndAssociatedTasksActions"
                 Prelude.<$> endAssociatedTasksActions,
               (JSON..=) "EventBridgeActions" Prelude.<$> eventBridgeActions,
               (JSON..=) "SendNotificationActions"
                 Prelude.<$> sendNotificationActions,
               (JSON..=) "SubmitAutoEvaluationActions"
                 Prelude.<$> submitAutoEvaluationActions,
               (JSON..=) "TaskActions" Prelude.<$> taskActions,
               (JSON..=) "UpdateCaseActions" Prelude.<$> updateCaseActions]))
instance Property "AssignContactCategoryActions" ActionsProperty where
  type PropertyType "AssignContactCategoryActions" ActionsProperty = JSON.Object
  set newValue ActionsProperty {..}
    = ActionsProperty
        {assignContactCategoryActions = Prelude.pure newValue, ..}
instance Property "CreateCaseActions" ActionsProperty where
  type PropertyType "CreateCaseActions" ActionsProperty = [CreateCaseActionProperty]
  set newValue ActionsProperty {..}
    = ActionsProperty {createCaseActions = Prelude.pure newValue, ..}
instance Property "EndAssociatedTasksActions" ActionsProperty where
  type PropertyType "EndAssociatedTasksActions" ActionsProperty = JSON.Object
  set newValue ActionsProperty {..}
    = ActionsProperty
        {endAssociatedTasksActions = Prelude.pure newValue, ..}
instance Property "EventBridgeActions" ActionsProperty where
  type PropertyType "EventBridgeActions" ActionsProperty = [EventBridgeActionProperty]
  set newValue ActionsProperty {..}
    = ActionsProperty {eventBridgeActions = Prelude.pure newValue, ..}
instance Property "SendNotificationActions" ActionsProperty where
  type PropertyType "SendNotificationActions" ActionsProperty = [SendNotificationActionProperty]
  set newValue ActionsProperty {..}
    = ActionsProperty
        {sendNotificationActions = Prelude.pure newValue, ..}
instance Property "SubmitAutoEvaluationActions" ActionsProperty where
  type PropertyType "SubmitAutoEvaluationActions" ActionsProperty = [SubmitAutoEvaluationActionProperty]
  set newValue ActionsProperty {..}
    = ActionsProperty
        {submitAutoEvaluationActions = Prelude.pure newValue, ..}
instance Property "TaskActions" ActionsProperty where
  type PropertyType "TaskActions" ActionsProperty = [TaskActionProperty]
  set newValue ActionsProperty {..}
    = ActionsProperty {taskActions = Prelude.pure newValue, ..}
instance Property "UpdateCaseActions" ActionsProperty where
  type PropertyType "UpdateCaseActions" ActionsProperty = [UpdateCaseActionProperty]
  set newValue ActionsProperty {..}
    = ActionsProperty {updateCaseActions = Prelude.pure newValue, ..}