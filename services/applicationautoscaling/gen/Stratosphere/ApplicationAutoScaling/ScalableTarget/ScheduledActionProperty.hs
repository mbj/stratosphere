module Stratosphere.ApplicationAutoScaling.ScalableTarget.ScheduledActionProperty (
        module Exports, ScheduledActionProperty(..),
        mkScheduledActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalableTarget.ScalableTargetActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduledActionProperty
  = ScheduledActionProperty {endTime :: (Prelude.Maybe (Value Prelude.Text)),
                             scalableTargetAction :: (Prelude.Maybe ScalableTargetActionProperty),
                             schedule :: (Value Prelude.Text),
                             scheduledActionName :: (Value Prelude.Text),
                             startTime :: (Prelude.Maybe (Value Prelude.Text)),
                             timezone :: (Prelude.Maybe (Value Prelude.Text))}
mkScheduledActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ScheduledActionProperty
mkScheduledActionProperty schedule scheduledActionName
  = ScheduledActionProperty
      {schedule = schedule, scheduledActionName = scheduledActionName,
       endTime = Prelude.Nothing, scalableTargetAction = Prelude.Nothing,
       startTime = Prelude.Nothing, timezone = Prelude.Nothing}
instance ToResourceProperties ScheduledActionProperty where
  toResourceProperties ScheduledActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalableTarget.ScheduledAction",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Schedule" JSON..= schedule,
                            "ScheduledActionName" JSON..= scheduledActionName]
                           (Prelude.catMaybes
                              [(JSON..=) "EndTime" Prelude.<$> endTime,
                               (JSON..=) "ScalableTargetAction" Prelude.<$> scalableTargetAction,
                               (JSON..=) "StartTime" Prelude.<$> startTime,
                               (JSON..=) "Timezone" Prelude.<$> timezone]))}
instance JSON.ToJSON ScheduledActionProperty where
  toJSON ScheduledActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Schedule" JSON..= schedule,
               "ScheduledActionName" JSON..= scheduledActionName]
              (Prelude.catMaybes
                 [(JSON..=) "EndTime" Prelude.<$> endTime,
                  (JSON..=) "ScalableTargetAction" Prelude.<$> scalableTargetAction,
                  (JSON..=) "StartTime" Prelude.<$> startTime,
                  (JSON..=) "Timezone" Prelude.<$> timezone])))
instance Property "EndTime" ScheduledActionProperty where
  type PropertyType "EndTime" ScheduledActionProperty = Value Prelude.Text
  set newValue ScheduledActionProperty {..}
    = ScheduledActionProperty {endTime = Prelude.pure newValue, ..}
instance Property "ScalableTargetAction" ScheduledActionProperty where
  type PropertyType "ScalableTargetAction" ScheduledActionProperty = ScalableTargetActionProperty
  set newValue ScheduledActionProperty {..}
    = ScheduledActionProperty
        {scalableTargetAction = Prelude.pure newValue, ..}
instance Property "Schedule" ScheduledActionProperty where
  type PropertyType "Schedule" ScheduledActionProperty = Value Prelude.Text
  set newValue ScheduledActionProperty {..}
    = ScheduledActionProperty {schedule = newValue, ..}
instance Property "ScheduledActionName" ScheduledActionProperty where
  type PropertyType "ScheduledActionName" ScheduledActionProperty = Value Prelude.Text
  set newValue ScheduledActionProperty {..}
    = ScheduledActionProperty {scheduledActionName = newValue, ..}
instance Property "StartTime" ScheduledActionProperty where
  type PropertyType "StartTime" ScheduledActionProperty = Value Prelude.Text
  set newValue ScheduledActionProperty {..}
    = ScheduledActionProperty {startTime = Prelude.pure newValue, ..}
instance Property "Timezone" ScheduledActionProperty where
  type PropertyType "Timezone" ScheduledActionProperty = Value Prelude.Text
  set newValue ScheduledActionProperty {..}
    = ScheduledActionProperty {timezone = Prelude.pure newValue, ..}