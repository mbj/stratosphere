module Stratosphere.Budgets.BudgetsAction (
        module Exports, BudgetsAction(..), mkBudgetsAction
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Budgets.BudgetsAction.ActionThresholdProperty as Exports
import {-# SOURCE #-} Stratosphere.Budgets.BudgetsAction.DefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.Budgets.BudgetsAction.ResourceTagProperty as Exports
import {-# SOURCE #-} Stratosphere.Budgets.BudgetsAction.SubscriberProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BudgetsAction
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budgetsaction.html>
    BudgetsAction {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budgetsaction.html#cfn-budgets-budgetsaction-actionthreshold>
                   actionThreshold :: ActionThresholdProperty,
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budgetsaction.html#cfn-budgets-budgetsaction-actiontype>
                   actionType :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budgetsaction.html#cfn-budgets-budgetsaction-approvalmodel>
                   approvalModel :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budgetsaction.html#cfn-budgets-budgetsaction-budgetname>
                   budgetName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budgetsaction.html#cfn-budgets-budgetsaction-definition>
                   definition :: DefinitionProperty,
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budgetsaction.html#cfn-budgets-budgetsaction-executionrolearn>
                   executionRoleArn :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budgetsaction.html#cfn-budgets-budgetsaction-notificationtype>
                   notificationType :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budgetsaction.html#cfn-budgets-budgetsaction-resourcetags>
                   resourceTags :: (Prelude.Maybe [ResourceTagProperty]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-budgets-budgetsaction.html#cfn-budgets-budgetsaction-subscribers>
                   subscribers :: [SubscriberProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBudgetsAction ::
  ActionThresholdProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> DefinitionProperty
           -> Value Prelude.Text
              -> Value Prelude.Text -> [SubscriberProperty] -> BudgetsAction
mkBudgetsAction
  actionThreshold
  actionType
  budgetName
  definition
  executionRoleArn
  notificationType
  subscribers
  = BudgetsAction
      {haddock_workaround_ = (), actionThreshold = actionThreshold,
       actionType = actionType, budgetName = budgetName,
       definition = definition, executionRoleArn = executionRoleArn,
       notificationType = notificationType, subscribers = subscribers,
       approvalModel = Prelude.Nothing, resourceTags = Prelude.Nothing}
instance ToResourceProperties BudgetsAction where
  toResourceProperties BudgetsAction {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::BudgetsAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ActionThreshold" JSON..= actionThreshold,
                            "ActionType" JSON..= actionType, "BudgetName" JSON..= budgetName,
                            "Definition" JSON..= definition,
                            "ExecutionRoleArn" JSON..= executionRoleArn,
                            "NotificationType" JSON..= notificationType,
                            "Subscribers" JSON..= subscribers]
                           (Prelude.catMaybes
                              [(JSON..=) "ApprovalModel" Prelude.<$> approvalModel,
                               (JSON..=) "ResourceTags" Prelude.<$> resourceTags]))}
instance JSON.ToJSON BudgetsAction where
  toJSON BudgetsAction {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ActionThreshold" JSON..= actionThreshold,
               "ActionType" JSON..= actionType, "BudgetName" JSON..= budgetName,
               "Definition" JSON..= definition,
               "ExecutionRoleArn" JSON..= executionRoleArn,
               "NotificationType" JSON..= notificationType,
               "Subscribers" JSON..= subscribers]
              (Prelude.catMaybes
                 [(JSON..=) "ApprovalModel" Prelude.<$> approvalModel,
                  (JSON..=) "ResourceTags" Prelude.<$> resourceTags])))
instance Property "ActionThreshold" BudgetsAction where
  type PropertyType "ActionThreshold" BudgetsAction = ActionThresholdProperty
  set newValue BudgetsAction {..}
    = BudgetsAction {actionThreshold = newValue, ..}
instance Property "ActionType" BudgetsAction where
  type PropertyType "ActionType" BudgetsAction = Value Prelude.Text
  set newValue BudgetsAction {..}
    = BudgetsAction {actionType = newValue, ..}
instance Property "ApprovalModel" BudgetsAction where
  type PropertyType "ApprovalModel" BudgetsAction = Value Prelude.Text
  set newValue BudgetsAction {..}
    = BudgetsAction {approvalModel = Prelude.pure newValue, ..}
instance Property "BudgetName" BudgetsAction where
  type PropertyType "BudgetName" BudgetsAction = Value Prelude.Text
  set newValue BudgetsAction {..}
    = BudgetsAction {budgetName = newValue, ..}
instance Property "Definition" BudgetsAction where
  type PropertyType "Definition" BudgetsAction = DefinitionProperty
  set newValue BudgetsAction {..}
    = BudgetsAction {definition = newValue, ..}
instance Property "ExecutionRoleArn" BudgetsAction where
  type PropertyType "ExecutionRoleArn" BudgetsAction = Value Prelude.Text
  set newValue BudgetsAction {..}
    = BudgetsAction {executionRoleArn = newValue, ..}
instance Property "NotificationType" BudgetsAction where
  type PropertyType "NotificationType" BudgetsAction = Value Prelude.Text
  set newValue BudgetsAction {..}
    = BudgetsAction {notificationType = newValue, ..}
instance Property "ResourceTags" BudgetsAction where
  type PropertyType "ResourceTags" BudgetsAction = [ResourceTagProperty]
  set newValue BudgetsAction {..}
    = BudgetsAction {resourceTags = Prelude.pure newValue, ..}
instance Property "Subscribers" BudgetsAction where
  type PropertyType "Subscribers" BudgetsAction = [SubscriberProperty]
  set newValue BudgetsAction {..}
    = BudgetsAction {subscribers = newValue, ..}