module Stratosphere.GroundStation.Config.FrequencyProperty (
        FrequencyProperty(..), mkFrequencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FrequencyProperty
  = FrequencyProperty {units :: (Prelude.Maybe (Value Prelude.Text)),
                       value :: (Prelude.Maybe (Value Prelude.Double))}
mkFrequencyProperty :: FrequencyProperty
mkFrequencyProperty
  = FrequencyProperty
      {units = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties FrequencyProperty where
  toResourceProperties FrequencyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.Frequency",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Units" Prelude.<$> units,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON FrequencyProperty where
  toJSON FrequencyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Units" Prelude.<$> units,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Units" FrequencyProperty where
  type PropertyType "Units" FrequencyProperty = Value Prelude.Text
  set newValue FrequencyProperty {..}
    = FrequencyProperty {units = Prelude.pure newValue, ..}
instance Property "Value" FrequencyProperty where
  type PropertyType "Value" FrequencyProperty = Value Prelude.Double
  set newValue FrequencyProperty {..}
    = FrequencyProperty {value = Prelude.pure newValue, ..}