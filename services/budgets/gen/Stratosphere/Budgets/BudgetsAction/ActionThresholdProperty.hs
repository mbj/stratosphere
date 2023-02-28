module Stratosphere.Budgets.BudgetsAction.ActionThresholdProperty (
        ActionThresholdProperty(..), mkActionThresholdProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionThresholdProperty
  = ActionThresholdProperty {type' :: (Value Prelude.Text),
                             value :: (Value Prelude.Double)}
mkActionThresholdProperty ::
  Value Prelude.Text
  -> Value Prelude.Double -> ActionThresholdProperty
mkActionThresholdProperty type' value
  = ActionThresholdProperty {type' = type', value = value}
instance ToResourceProperties ActionThresholdProperty where
  toResourceProperties ActionThresholdProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::BudgetsAction.ActionThreshold",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Value" JSON..= value]}
instance JSON.ToJSON ActionThresholdProperty where
  toJSON ActionThresholdProperty {..}
    = JSON.object ["Type" JSON..= type', "Value" JSON..= value]
instance Property "Type" ActionThresholdProperty where
  type PropertyType "Type" ActionThresholdProperty = Value Prelude.Text
  set newValue ActionThresholdProperty {..}
    = ActionThresholdProperty {type' = newValue, ..}
instance Property "Value" ActionThresholdProperty where
  type PropertyType "Value" ActionThresholdProperty = Value Prelude.Double
  set newValue ActionThresholdProperty {..}
    = ActionThresholdProperty {value = newValue, ..}