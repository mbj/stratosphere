module Stratosphere.NimbleStudio.LaunchProfile.VolumeConfigurationProperty (
        VolumeConfigurationProperty(..), mkVolumeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumeConfigurationProperty
  = VolumeConfigurationProperty {iops :: (Prelude.Maybe (Value Prelude.Double)),
                                 size :: (Prelude.Maybe (Value Prelude.Double)),
                                 throughput :: (Prelude.Maybe (Value Prelude.Double))}
mkVolumeConfigurationProperty :: VolumeConfigurationProperty
mkVolumeConfigurationProperty
  = VolumeConfigurationProperty
      {iops = Prelude.Nothing, size = Prelude.Nothing,
       throughput = Prelude.Nothing}
instance ToResourceProperties VolumeConfigurationProperty where
  toResourceProperties VolumeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::LaunchProfile.VolumeConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Iops" Prelude.<$> iops,
                            (JSON..=) "Size" Prelude.<$> size,
                            (JSON..=) "Throughput" Prelude.<$> throughput])}
instance JSON.ToJSON VolumeConfigurationProperty where
  toJSON VolumeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Iops" Prelude.<$> iops,
               (JSON..=) "Size" Prelude.<$> size,
               (JSON..=) "Throughput" Prelude.<$> throughput]))
instance Property "Iops" VolumeConfigurationProperty where
  type PropertyType "Iops" VolumeConfigurationProperty = Value Prelude.Double
  set newValue VolumeConfigurationProperty {..}
    = VolumeConfigurationProperty {iops = Prelude.pure newValue, ..}
instance Property "Size" VolumeConfigurationProperty where
  type PropertyType "Size" VolumeConfigurationProperty = Value Prelude.Double
  set newValue VolumeConfigurationProperty {..}
    = VolumeConfigurationProperty {size = Prelude.pure newValue, ..}
instance Property "Throughput" VolumeConfigurationProperty where
  type PropertyType "Throughput" VolumeConfigurationProperty = Value Prelude.Double
  set newValue VolumeConfigurationProperty {..}
    = VolumeConfigurationProperty
        {throughput = Prelude.pure newValue, ..}