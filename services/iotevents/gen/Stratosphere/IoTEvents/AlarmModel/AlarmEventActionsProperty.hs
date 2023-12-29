module Stratosphere.IoTEvents.AlarmModel.AlarmEventActionsProperty (
        module Exports, AlarmEventActionsProperty(..),
        mkAlarmEventActionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.AlarmActionProperty as Exports
import Stratosphere.ResourceProperties
data AlarmEventActionsProperty
  = AlarmEventActionsProperty {alarmActions :: (Prelude.Maybe [AlarmActionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlarmEventActionsProperty :: AlarmEventActionsProperty
mkAlarmEventActionsProperty
  = AlarmEventActionsProperty {alarmActions = Prelude.Nothing}
instance ToResourceProperties AlarmEventActionsProperty where
  toResourceProperties AlarmEventActionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.AlarmEventActions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AlarmActions" Prelude.<$> alarmActions])}
instance JSON.ToJSON AlarmEventActionsProperty where
  toJSON AlarmEventActionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AlarmActions" Prelude.<$> alarmActions]))
instance Property "AlarmActions" AlarmEventActionsProperty where
  type PropertyType "AlarmActions" AlarmEventActionsProperty = [AlarmActionProperty]
  set newValue AlarmEventActionsProperty {}
    = AlarmEventActionsProperty
        {alarmActions = Prelude.pure newValue, ..}