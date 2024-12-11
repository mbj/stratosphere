module Stratosphere.CloudTrail.Dashboard.FrequencyProperty (
        FrequencyProperty(..), mkFrequencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FrequencyProperty
  = FrequencyProperty {unit :: (Value Prelude.Text),
                       value :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFrequencyProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> FrequencyProperty
mkFrequencyProperty unit value
  = FrequencyProperty {unit = unit, value = value}
instance ToResourceProperties FrequencyProperty where
  toResourceProperties FrequencyProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Dashboard.Frequency",
         supportsTags = Prelude.False,
         properties = ["Unit" JSON..= unit, "Value" JSON..= value]}
instance JSON.ToJSON FrequencyProperty where
  toJSON FrequencyProperty {..}
    = JSON.object ["Unit" JSON..= unit, "Value" JSON..= value]
instance Property "Unit" FrequencyProperty where
  type PropertyType "Unit" FrequencyProperty = Value Prelude.Text
  set newValue FrequencyProperty {..}
    = FrequencyProperty {unit = newValue, ..}
instance Property "Value" FrequencyProperty where
  type PropertyType "Value" FrequencyProperty = Value Prelude.Integer
  set newValue FrequencyProperty {..}
    = FrequencyProperty {value = newValue, ..}