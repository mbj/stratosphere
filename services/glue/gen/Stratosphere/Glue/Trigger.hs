module Stratosphere.Glue.Trigger (
        module Exports, Trigger(..), mkTrigger
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Trigger.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Trigger.EventBatchingConditionProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Trigger.PredicateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Trigger
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html>
    Trigger {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-actions>
             actions :: [ActionProperty],
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-eventbatchingcondition>
             eventBatchingCondition :: (Prelude.Maybe EventBatchingConditionProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-name>
             name :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-predicate>
             predicate :: (Prelude.Maybe PredicateProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-schedule>
             schedule :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-startoncreation>
             startOnCreation :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-tags>
             tags :: (Prelude.Maybe JSON.Object),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-type>
             type' :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-trigger.html#cfn-glue-trigger-workflowname>
             workflowName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrigger :: [ActionProperty] -> Value Prelude.Text -> Trigger
mkTrigger actions type'
  = Trigger
      {haddock_workaround_ = (), actions = actions, type' = type',
       description = Prelude.Nothing,
       eventBatchingCondition = Prelude.Nothing, name = Prelude.Nothing,
       predicate = Prelude.Nothing, schedule = Prelude.Nothing,
       startOnCreation = Prelude.Nothing, tags = Prelude.Nothing,
       workflowName = Prelude.Nothing}
instance ToResourceProperties Trigger where
  toResourceProperties Trigger {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Trigger", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EventBatchingCondition"
                                 Prelude.<$> eventBatchingCondition,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Predicate" Prelude.<$> predicate,
                               (JSON..=) "Schedule" Prelude.<$> schedule,
                               (JSON..=) "StartOnCreation" Prelude.<$> startOnCreation,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "WorkflowName" Prelude.<$> workflowName]))}
instance JSON.ToJSON Trigger where
  toJSON Trigger {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EventBatchingCondition"
                    Prelude.<$> eventBatchingCondition,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Predicate" Prelude.<$> predicate,
                  (JSON..=) "Schedule" Prelude.<$> schedule,
                  (JSON..=) "StartOnCreation" Prelude.<$> startOnCreation,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "WorkflowName" Prelude.<$> workflowName])))
instance Property "Actions" Trigger where
  type PropertyType "Actions" Trigger = [ActionProperty]
  set newValue Trigger {..} = Trigger {actions = newValue, ..}
instance Property "Description" Trigger where
  type PropertyType "Description" Trigger = Value Prelude.Text
  set newValue Trigger {..}
    = Trigger {description = Prelude.pure newValue, ..}
instance Property "EventBatchingCondition" Trigger where
  type PropertyType "EventBatchingCondition" Trigger = EventBatchingConditionProperty
  set newValue Trigger {..}
    = Trigger {eventBatchingCondition = Prelude.pure newValue, ..}
instance Property "Name" Trigger where
  type PropertyType "Name" Trigger = Value Prelude.Text
  set newValue Trigger {..}
    = Trigger {name = Prelude.pure newValue, ..}
instance Property "Predicate" Trigger where
  type PropertyType "Predicate" Trigger = PredicateProperty
  set newValue Trigger {..}
    = Trigger {predicate = Prelude.pure newValue, ..}
instance Property "Schedule" Trigger where
  type PropertyType "Schedule" Trigger = Value Prelude.Text
  set newValue Trigger {..}
    = Trigger {schedule = Prelude.pure newValue, ..}
instance Property "StartOnCreation" Trigger where
  type PropertyType "StartOnCreation" Trigger = Value Prelude.Bool
  set newValue Trigger {..}
    = Trigger {startOnCreation = Prelude.pure newValue, ..}
instance Property "Tags" Trigger where
  type PropertyType "Tags" Trigger = JSON.Object
  set newValue Trigger {..}
    = Trigger {tags = Prelude.pure newValue, ..}
instance Property "Type" Trigger where
  type PropertyType "Type" Trigger = Value Prelude.Text
  set newValue Trigger {..} = Trigger {type' = newValue, ..}
instance Property "WorkflowName" Trigger where
  type PropertyType "WorkflowName" Trigger = Value Prelude.Text
  set newValue Trigger {..}
    = Trigger {workflowName = Prelude.pure newValue, ..}