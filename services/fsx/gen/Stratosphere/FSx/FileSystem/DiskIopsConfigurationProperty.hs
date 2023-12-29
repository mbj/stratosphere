module Stratosphere.FSx.FileSystem.DiskIopsConfigurationProperty (
        DiskIopsConfigurationProperty(..), mkDiskIopsConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DiskIopsConfigurationProperty
  = DiskIopsConfigurationProperty {iops :: (Prelude.Maybe (Value Prelude.Integer)),
                                   mode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDiskIopsConfigurationProperty :: DiskIopsConfigurationProperty
mkDiskIopsConfigurationProperty
  = DiskIopsConfigurationProperty
      {iops = Prelude.Nothing, mode = Prelude.Nothing}
instance ToResourceProperties DiskIopsConfigurationProperty where
  toResourceProperties DiskIopsConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.DiskIopsConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Iops" Prelude.<$> iops,
                            (JSON..=) "Mode" Prelude.<$> mode])}
instance JSON.ToJSON DiskIopsConfigurationProperty where
  toJSON DiskIopsConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Iops" Prelude.<$> iops,
               (JSON..=) "Mode" Prelude.<$> mode]))
instance Property "Iops" DiskIopsConfigurationProperty where
  type PropertyType "Iops" DiskIopsConfigurationProperty = Value Prelude.Integer
  set newValue DiskIopsConfigurationProperty {..}
    = DiskIopsConfigurationProperty {iops = Prelude.pure newValue, ..}
instance Property "Mode" DiskIopsConfigurationProperty where
  type PropertyType "Mode" DiskIopsConfigurationProperty = Value Prelude.Text
  set newValue DiskIopsConfigurationProperty {..}
    = DiskIopsConfigurationProperty {mode = Prelude.pure newValue, ..}