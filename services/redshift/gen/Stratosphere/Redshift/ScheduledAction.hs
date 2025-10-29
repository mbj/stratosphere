module Stratosphere.Redshift.ScheduledAction (
        module Exports, ScheduledAction(..), mkScheduledAction
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Redshift.ScheduledAction.ScheduledActionTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduledAction
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-scheduledaction.html>
    ScheduledAction {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-scheduledaction.html#cfn-redshift-scheduledaction-enable>
                     enable :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-scheduledaction.html#cfn-redshift-scheduledaction-endtime>
                     endTime :: (Prelude.Maybe (Value Prelude.Text)),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-scheduledaction.html#cfn-redshift-scheduledaction-iamrole>
                     iamRole :: (Prelude.Maybe (Value Prelude.Text)),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-scheduledaction.html#cfn-redshift-scheduledaction-schedule>
                     schedule :: (Prelude.Maybe (Value Prelude.Text)),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-scheduledaction.html#cfn-redshift-scheduledaction-scheduledactiondescription>
                     scheduledActionDescription :: (Prelude.Maybe (Value Prelude.Text)),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-scheduledaction.html#cfn-redshift-scheduledaction-scheduledactionname>
                     scheduledActionName :: (Value Prelude.Text),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-scheduledaction.html#cfn-redshift-scheduledaction-starttime>
                     startTime :: (Prelude.Maybe (Value Prelude.Text)),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-redshift-scheduledaction.html#cfn-redshift-scheduledaction-targetaction>
                     targetAction :: (Prelude.Maybe ScheduledActionTypeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduledAction :: Value Prelude.Text -> ScheduledAction
mkScheduledAction scheduledActionName
  = ScheduledAction
      {scheduledActionName = scheduledActionName,
       enable = Prelude.Nothing, endTime = Prelude.Nothing,
       iamRole = Prelude.Nothing, schedule = Prelude.Nothing,
       scheduledActionDescription = Prelude.Nothing,
       startTime = Prelude.Nothing, targetAction = Prelude.Nothing}
instance ToResourceProperties ScheduledAction where
  toResourceProperties ScheduledAction {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::ScheduledAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ScheduledActionName" JSON..= scheduledActionName]
                           (Prelude.catMaybes
                              [(JSON..=) "Enable" Prelude.<$> enable,
                               (JSON..=) "EndTime" Prelude.<$> endTime,
                               (JSON..=) "IamRole" Prelude.<$> iamRole,
                               (JSON..=) "Schedule" Prelude.<$> schedule,
                               (JSON..=) "ScheduledActionDescription"
                                 Prelude.<$> scheduledActionDescription,
                               (JSON..=) "StartTime" Prelude.<$> startTime,
                               (JSON..=) "TargetAction" Prelude.<$> targetAction]))}
instance JSON.ToJSON ScheduledAction where
  toJSON ScheduledAction {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ScheduledActionName" JSON..= scheduledActionName]
              (Prelude.catMaybes
                 [(JSON..=) "Enable" Prelude.<$> enable,
                  (JSON..=) "EndTime" Prelude.<$> endTime,
                  (JSON..=) "IamRole" Prelude.<$> iamRole,
                  (JSON..=) "Schedule" Prelude.<$> schedule,
                  (JSON..=) "ScheduledActionDescription"
                    Prelude.<$> scheduledActionDescription,
                  (JSON..=) "StartTime" Prelude.<$> startTime,
                  (JSON..=) "TargetAction" Prelude.<$> targetAction])))
instance Property "Enable" ScheduledAction where
  type PropertyType "Enable" ScheduledAction = Value Prelude.Bool
  set newValue ScheduledAction {..}
    = ScheduledAction {enable = Prelude.pure newValue, ..}
instance Property "EndTime" ScheduledAction where
  type PropertyType "EndTime" ScheduledAction = Value Prelude.Text
  set newValue ScheduledAction {..}
    = ScheduledAction {endTime = Prelude.pure newValue, ..}
instance Property "IamRole" ScheduledAction where
  type PropertyType "IamRole" ScheduledAction = Value Prelude.Text
  set newValue ScheduledAction {..}
    = ScheduledAction {iamRole = Prelude.pure newValue, ..}
instance Property "Schedule" ScheduledAction where
  type PropertyType "Schedule" ScheduledAction = Value Prelude.Text
  set newValue ScheduledAction {..}
    = ScheduledAction {schedule = Prelude.pure newValue, ..}
instance Property "ScheduledActionDescription" ScheduledAction where
  type PropertyType "ScheduledActionDescription" ScheduledAction = Value Prelude.Text
  set newValue ScheduledAction {..}
    = ScheduledAction
        {scheduledActionDescription = Prelude.pure newValue, ..}
instance Property "ScheduledActionName" ScheduledAction where
  type PropertyType "ScheduledActionName" ScheduledAction = Value Prelude.Text
  set newValue ScheduledAction {..}
    = ScheduledAction {scheduledActionName = newValue, ..}
instance Property "StartTime" ScheduledAction where
  type PropertyType "StartTime" ScheduledAction = Value Prelude.Text
  set newValue ScheduledAction {..}
    = ScheduledAction {startTime = Prelude.pure newValue, ..}
instance Property "TargetAction" ScheduledAction where
  type PropertyType "TargetAction" ScheduledAction = ScheduledActionTypeProperty
  set newValue ScheduledAction {..}
    = ScheduledAction {targetAction = Prelude.pure newValue, ..}