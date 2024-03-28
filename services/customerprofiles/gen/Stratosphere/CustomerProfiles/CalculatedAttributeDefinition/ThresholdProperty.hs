module Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.ThresholdProperty (
        ThresholdProperty(..), mkThresholdProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThresholdProperty
  = ThresholdProperty {operator :: (Value Prelude.Text),
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThresholdProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ThresholdProperty
mkThresholdProperty operator value
  = ThresholdProperty {operator = operator, value = value}
instance ToResourceProperties ThresholdProperty where
  toResourceProperties ThresholdProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::CalculatedAttributeDefinition.Threshold",
         supportsTags = Prelude.False,
         properties = ["Operator" JSON..= operator, "Value" JSON..= value]}
instance JSON.ToJSON ThresholdProperty where
  toJSON ThresholdProperty {..}
    = JSON.object ["Operator" JSON..= operator, "Value" JSON..= value]
instance Property "Operator" ThresholdProperty where
  type PropertyType "Operator" ThresholdProperty = Value Prelude.Text
  set newValue ThresholdProperty {..}
    = ThresholdProperty {operator = newValue, ..}
instance Property "Value" ThresholdProperty where
  type PropertyType "Value" ThresholdProperty = Value Prelude.Text
  set newValue ThresholdProperty {..}
    = ThresholdProperty {value = newValue, ..}