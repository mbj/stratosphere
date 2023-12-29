module Stratosphere.GroundStation.Config.FrequencyBandwidthProperty (
        FrequencyBandwidthProperty(..), mkFrequencyBandwidthProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FrequencyBandwidthProperty
  = FrequencyBandwidthProperty {units :: (Prelude.Maybe (Value Prelude.Text)),
                                value :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFrequencyBandwidthProperty :: FrequencyBandwidthProperty
mkFrequencyBandwidthProperty
  = FrequencyBandwidthProperty
      {units = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties FrequencyBandwidthProperty where
  toResourceProperties FrequencyBandwidthProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.FrequencyBandwidth",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Units" Prelude.<$> units,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON FrequencyBandwidthProperty where
  toJSON FrequencyBandwidthProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Units" Prelude.<$> units,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Units" FrequencyBandwidthProperty where
  type PropertyType "Units" FrequencyBandwidthProperty = Value Prelude.Text
  set newValue FrequencyBandwidthProperty {..}
    = FrequencyBandwidthProperty {units = Prelude.pure newValue, ..}
instance Property "Value" FrequencyBandwidthProperty where
  type PropertyType "Value" FrequencyBandwidthProperty = Value Prelude.Double
  set newValue FrequencyBandwidthProperty {..}
    = FrequencyBandwidthProperty {value = Prelude.pure newValue, ..}