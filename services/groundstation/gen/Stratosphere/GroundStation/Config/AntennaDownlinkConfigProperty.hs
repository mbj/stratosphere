module Stratosphere.GroundStation.Config.AntennaDownlinkConfigProperty (
        module Exports, AntennaDownlinkConfigProperty(..),
        mkAntennaDownlinkConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.Config.SpectrumConfigProperty as Exports
import Stratosphere.ResourceProperties
data AntennaDownlinkConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-antennadownlinkconfig.html>
    AntennaDownlinkConfigProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-antennadownlinkconfig.html#cfn-groundstation-config-antennadownlinkconfig-spectrumconfig>
                                   spectrumConfig :: (Prelude.Maybe SpectrumConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAntennaDownlinkConfigProperty :: AntennaDownlinkConfigProperty
mkAntennaDownlinkConfigProperty
  = AntennaDownlinkConfigProperty
      {haddock_workaround_ = (), spectrumConfig = Prelude.Nothing}
instance ToResourceProperties AntennaDownlinkConfigProperty where
  toResourceProperties AntennaDownlinkConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.AntennaDownlinkConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SpectrumConfig" Prelude.<$> spectrumConfig])}
instance JSON.ToJSON AntennaDownlinkConfigProperty where
  toJSON AntennaDownlinkConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SpectrumConfig" Prelude.<$> spectrumConfig]))
instance Property "SpectrumConfig" AntennaDownlinkConfigProperty where
  type PropertyType "SpectrumConfig" AntennaDownlinkConfigProperty = SpectrumConfigProperty
  set newValue AntennaDownlinkConfigProperty {..}
    = AntennaDownlinkConfigProperty
        {spectrumConfig = Prelude.pure newValue, ..}