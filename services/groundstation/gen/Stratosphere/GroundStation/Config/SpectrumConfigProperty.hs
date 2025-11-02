module Stratosphere.GroundStation.Config.SpectrumConfigProperty (
        module Exports, SpectrumConfigProperty(..),
        mkSpectrumConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.Config.FrequencyProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.Config.FrequencyBandwidthProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpectrumConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-spectrumconfig.html>
    SpectrumConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-spectrumconfig.html#cfn-groundstation-config-spectrumconfig-bandwidth>
                            bandwidth :: (Prelude.Maybe FrequencyBandwidthProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-spectrumconfig.html#cfn-groundstation-config-spectrumconfig-centerfrequency>
                            centerFrequency :: (Prelude.Maybe FrequencyProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-spectrumconfig.html#cfn-groundstation-config-spectrumconfig-polarization>
                            polarization :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpectrumConfigProperty :: SpectrumConfigProperty
mkSpectrumConfigProperty
  = SpectrumConfigProperty
      {haddock_workaround_ = (), bandwidth = Prelude.Nothing,
       centerFrequency = Prelude.Nothing, polarization = Prelude.Nothing}
instance ToResourceProperties SpectrumConfigProperty where
  toResourceProperties SpectrumConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.SpectrumConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bandwidth" Prelude.<$> bandwidth,
                            (JSON..=) "CenterFrequency" Prelude.<$> centerFrequency,
                            (JSON..=) "Polarization" Prelude.<$> polarization])}
instance JSON.ToJSON SpectrumConfigProperty where
  toJSON SpectrumConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bandwidth" Prelude.<$> bandwidth,
               (JSON..=) "CenterFrequency" Prelude.<$> centerFrequency,
               (JSON..=) "Polarization" Prelude.<$> polarization]))
instance Property "Bandwidth" SpectrumConfigProperty where
  type PropertyType "Bandwidth" SpectrumConfigProperty = FrequencyBandwidthProperty
  set newValue SpectrumConfigProperty {..}
    = SpectrumConfigProperty {bandwidth = Prelude.pure newValue, ..}
instance Property "CenterFrequency" SpectrumConfigProperty where
  type PropertyType "CenterFrequency" SpectrumConfigProperty = FrequencyProperty
  set newValue SpectrumConfigProperty {..}
    = SpectrumConfigProperty
        {centerFrequency = Prelude.pure newValue, ..}
instance Property "Polarization" SpectrumConfigProperty where
  type PropertyType "Polarization" SpectrumConfigProperty = Value Prelude.Text
  set newValue SpectrumConfigProperty {..}
    = SpectrumConfigProperty {polarization = Prelude.pure newValue, ..}