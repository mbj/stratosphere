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
  = ScheduledAction {enable :: (Prelude.Maybe (Value Prelude.Bool)),
                     endTime :: (Prelude.Maybe (Value Prelude.Text)),
                     iamRole :: (Prelude.Maybe (Value Prelude.Text)),
                     schedule :: (Prelude.Maybe (Value Prelude.Text)),
                     scheduledActionDescription :: (Prelude.Maybe (Value Prelude.Text)),
                     scheduledActionName :: (Value Prelude.Text),
                     startTime :: (Prelude.Maybe (Value Prelude.Text)),
                     targetAction :: (Prelude.Maybe ScheduledActionTypeProperty)}
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