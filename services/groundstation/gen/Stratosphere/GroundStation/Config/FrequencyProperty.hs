module Stratosphere.GroundStation.Config.FrequencyProperty (
        FrequencyProperty(..), mkFrequencyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FrequencyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-frequency.html>
    FrequencyProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-frequency.html#cfn-groundstation-config-frequency-units>
                       units :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-frequency.html#cfn-groundstation-config-frequency-value>
                       value :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFrequencyProperty :: FrequencyProperty
mkFrequencyProperty
  = FrequencyProperty
      {haddock_workaround_ = (), units = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties FrequencyProperty where
  toResourceProperties FrequencyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.Frequency",
         supportsTags = Prelude.False,
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