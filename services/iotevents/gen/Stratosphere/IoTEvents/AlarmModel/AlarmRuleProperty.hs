module Stratosphere.IoTEvents.AlarmModel.AlarmRuleProperty (
        module Exports, AlarmRuleProperty(..), mkAlarmRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.SimpleRuleProperty as Exports
import Stratosphere.ResourceProperties
data AlarmRuleProperty
  = AlarmRuleProperty {simpleRule :: (Prelude.Maybe SimpleRuleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlarmRuleProperty :: AlarmRuleProperty
mkAlarmRuleProperty
  = AlarmRuleProperty {simpleRule = Prelude.Nothing}
instance ToResourceProperties AlarmRuleProperty where
  toResourceProperties AlarmRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.AlarmRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SimpleRule" Prelude.<$> simpleRule])}
instance JSON.ToJSON AlarmRuleProperty where
  toJSON AlarmRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SimpleRule" Prelude.<$> simpleRule]))
instance Property "SimpleRule" AlarmRuleProperty where
  type PropertyType "SimpleRule" AlarmRuleProperty = SimpleRuleProperty
  set newValue AlarmRuleProperty {}
    = AlarmRuleProperty {simpleRule = Prelude.pure newValue, ..}