module Stratosphere.DataBrew.Dataset.FilterValueProperty (
        FilterValueProperty(..), mkFilterValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterValueProperty
  = FilterValueProperty {value :: (Value Prelude.Text),
                         valueReference :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterValueProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FilterValueProperty
mkFilterValueProperty value valueReference
  = FilterValueProperty
      {value = value, valueReference = valueReference}
instance ToResourceProperties FilterValueProperty where
  toResourceProperties FilterValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.FilterValue",
         supportsTags = Prelude.False,
         properties = ["Value" JSON..= value,
                       "ValueReference" JSON..= valueReference]}
instance JSON.ToJSON FilterValueProperty where
  toJSON FilterValueProperty {..}
    = JSON.object
        ["Value" JSON..= value, "ValueReference" JSON..= valueReference]
instance Property "Value" FilterValueProperty where
  type PropertyType "Value" FilterValueProperty = Value Prelude.Text
  set newValue FilterValueProperty {..}
    = FilterValueProperty {value = newValue, ..}
instance Property "ValueReference" FilterValueProperty where
  type PropertyType "ValueReference" FilterValueProperty = Value Prelude.Text
  set newValue FilterValueProperty {..}
    = FilterValueProperty {valueReference = newValue, ..}