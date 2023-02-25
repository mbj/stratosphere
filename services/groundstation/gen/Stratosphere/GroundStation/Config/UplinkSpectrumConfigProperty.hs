module Stratosphere.GroundStation.Config.UplinkSpectrumConfigProperty (
        module Exports, UplinkSpectrumConfigProperty(..),
        mkUplinkSpectrumConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.Config.FrequencyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UplinkSpectrumConfigProperty
  = UplinkSpectrumConfigProperty {centerFrequency :: (Prelude.Maybe FrequencyProperty),
                                  polarization :: (Prelude.Maybe (Value Prelude.Text))}
mkUplinkSpectrumConfigProperty :: UplinkSpectrumConfigProperty
mkUplinkSpectrumConfigProperty
  = UplinkSpectrumConfigProperty
      {centerFrequency = Prelude.Nothing, polarization = Prelude.Nothing}
instance ToResourceProperties UplinkSpectrumConfigProperty where
  toResourceProperties UplinkSpectrumConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.UplinkSpectrumConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CenterFrequency" Prelude.<$> centerFrequency,
                            (JSON..=) "Polarization" Prelude.<$> polarization])}
instance JSON.ToJSON UplinkSpectrumConfigProperty where
  toJSON UplinkSpectrumConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CenterFrequency" Prelude.<$> centerFrequency,
               (JSON..=) "Polarization" Prelude.<$> polarization]))
instance Property "CenterFrequency" UplinkSpectrumConfigProperty where
  type PropertyType "CenterFrequency" UplinkSpectrumConfigProperty = FrequencyProperty
  set newValue UplinkSpectrumConfigProperty {..}
    = UplinkSpectrumConfigProperty
        {centerFrequency = Prelude.pure newValue, ..}
instance Property "Polarization" UplinkSpectrumConfigProperty where
  type PropertyType "Polarization" UplinkSpectrumConfigProperty = Value Prelude.Text
  set newValue UplinkSpectrumConfigProperty {..}
    = UplinkSpectrumConfigProperty
        {polarization = Prelude.pure newValue, ..}