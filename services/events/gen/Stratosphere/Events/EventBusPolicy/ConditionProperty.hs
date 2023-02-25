module Stratosphere.Events.EventBusPolicy.ConditionProperty (
        ConditionProperty(..), mkConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionProperty
  = ConditionProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                       type' :: (Prelude.Maybe (Value Prelude.Text)),
                       value :: (Prelude.Maybe (Value Prelude.Text))}
mkConditionProperty :: ConditionProperty
mkConditionProperty
  = ConditionProperty
      {key = Prelude.Nothing, type' = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties ConditionProperty where
  toResourceProperties ConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::EventBusPolicy.Condition",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ConditionProperty where
  toJSON ConditionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" ConditionProperty where
  type PropertyType "Key" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {key = Prelude.pure newValue, ..}
instance Property "Type" ConditionProperty where
  type PropertyType "Type" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {type' = Prelude.pure newValue, ..}
instance Property "Value" ConditionProperty where
  type PropertyType "Value" ConditionProperty = Value Prelude.Text
  set newValue ConditionProperty {..}
    = ConditionProperty {value = Prelude.pure newValue, ..}