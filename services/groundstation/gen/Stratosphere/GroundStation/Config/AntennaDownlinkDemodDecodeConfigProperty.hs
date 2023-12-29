module Stratosphere.GroundStation.Config.AntennaDownlinkDemodDecodeConfigProperty (
        module Exports, AntennaDownlinkDemodDecodeConfigProperty(..),
        mkAntennaDownlinkDemodDecodeConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.Config.DecodeConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.Config.DemodulationConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.GroundStation.Config.SpectrumConfigProperty as Exports
import Stratosphere.ResourceProperties
data AntennaDownlinkDemodDecodeConfigProperty
  = AntennaDownlinkDemodDecodeConfigProperty {decodeConfig :: (Prelude.Maybe DecodeConfigProperty),
                                              demodulationConfig :: (Prelude.Maybe DemodulationConfigProperty),
                                              spectrumConfig :: (Prelude.Maybe SpectrumConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAntennaDownlinkDemodDecodeConfigProperty ::
  AntennaDownlinkDemodDecodeConfigProperty
mkAntennaDownlinkDemodDecodeConfigProperty
  = AntennaDownlinkDemodDecodeConfigProperty
      {decodeConfig = Prelude.Nothing,
       demodulationConfig = Prelude.Nothing,
       spectrumConfig = Prelude.Nothing}
instance ToResourceProperties AntennaDownlinkDemodDecodeConfigProperty where
  toResourceProperties AntennaDownlinkDemodDecodeConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.AntennaDownlinkDemodDecodeConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DecodeConfig" Prelude.<$> decodeConfig,
                            (JSON..=) "DemodulationConfig" Prelude.<$> demodulationConfig,
                            (JSON..=) "SpectrumConfig" Prelude.<$> spectrumConfig])}
instance JSON.ToJSON AntennaDownlinkDemodDecodeConfigProperty where
  toJSON AntennaDownlinkDemodDecodeConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DecodeConfig" Prelude.<$> decodeConfig,
               (JSON..=) "DemodulationConfig" Prelude.<$> demodulationConfig,
               (JSON..=) "SpectrumConfig" Prelude.<$> spectrumConfig]))
instance Property "DecodeConfig" AntennaDownlinkDemodDecodeConfigProperty where
  type PropertyType "DecodeConfig" AntennaDownlinkDemodDecodeConfigProperty = DecodeConfigProperty
  set newValue AntennaDownlinkDemodDecodeConfigProperty {..}
    = AntennaDownlinkDemodDecodeConfigProperty
        {decodeConfig = Prelude.pure newValue, ..}
instance Property "DemodulationConfig" AntennaDownlinkDemodDecodeConfigProperty where
  type PropertyType "DemodulationConfig" AntennaDownlinkDemodDecodeConfigProperty = DemodulationConfigProperty
  set newValue AntennaDownlinkDemodDecodeConfigProperty {..}
    = AntennaDownlinkDemodDecodeConfigProperty
        {demodulationConfig = Prelude.pure newValue, ..}
instance Property "SpectrumConfig" AntennaDownlinkDemodDecodeConfigProperty where
  type PropertyType "SpectrumConfig" AntennaDownlinkDemodDecodeConfigProperty = SpectrumConfigProperty
  set newValue AntennaDownlinkDemodDecodeConfigProperty {..}
    = AntennaDownlinkDemodDecodeConfigProperty
        {spectrumConfig = Prelude.pure newValue, ..}