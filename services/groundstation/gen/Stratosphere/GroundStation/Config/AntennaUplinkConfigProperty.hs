module Stratosphere.GroundStation.Config.AntennaUplinkConfigProperty (
        module Exports, AntennaUplinkConfigProperty(..),
        mkAntennaUplinkConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.Config.EirpProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.Config.UplinkSpectrumConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AntennaUplinkConfigProperty
  = AntennaUplinkConfigProperty {spectrumConfig :: (Prelude.Maybe UplinkSpectrumConfigProperty),
                                 targetEirp :: (Prelude.Maybe EirpProperty),
                                 transmitDisabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAntennaUplinkConfigProperty :: AntennaUplinkConfigProperty
mkAntennaUplinkConfigProperty
  = AntennaUplinkConfigProperty
      {spectrumConfig = Prelude.Nothing, targetEirp = Prelude.Nothing,
       transmitDisabled = Prelude.Nothing}
instance ToResourceProperties AntennaUplinkConfigProperty where
  toResourceProperties AntennaUplinkConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.AntennaUplinkConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SpectrumConfig" Prelude.<$> spectrumConfig,
                            (JSON..=) "TargetEirp" Prelude.<$> targetEirp,
                            (JSON..=) "TransmitDisabled" Prelude.<$> transmitDisabled])}
instance JSON.ToJSON AntennaUplinkConfigProperty where
  toJSON AntennaUplinkConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SpectrumConfig" Prelude.<$> spectrumConfig,
               (JSON..=) "TargetEirp" Prelude.<$> targetEirp,
               (JSON..=) "TransmitDisabled" Prelude.<$> transmitDisabled]))
instance Property "SpectrumConfig" AntennaUplinkConfigProperty where
  type PropertyType "SpectrumConfig" AntennaUplinkConfigProperty = UplinkSpectrumConfigProperty
  set newValue AntennaUplinkConfigProperty {..}
    = AntennaUplinkConfigProperty
        {spectrumConfig = Prelude.pure newValue, ..}
instance Property "TargetEirp" AntennaUplinkConfigProperty where
  type PropertyType "TargetEirp" AntennaUplinkConfigProperty = EirpProperty
  set newValue AntennaUplinkConfigProperty {..}
    = AntennaUplinkConfigProperty
        {targetEirp = Prelude.pure newValue, ..}
instance Property "TransmitDisabled" AntennaUplinkConfigProperty where
  type PropertyType "TransmitDisabled" AntennaUplinkConfigProperty = Value Prelude.Bool
  set newValue AntennaUplinkConfigProperty {..}
    = AntennaUplinkConfigProperty
        {transmitDisabled = Prelude.pure newValue, ..}