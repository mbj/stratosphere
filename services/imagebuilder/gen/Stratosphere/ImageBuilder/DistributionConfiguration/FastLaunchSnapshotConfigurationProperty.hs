module Stratosphere.ImageBuilder.DistributionConfiguration.FastLaunchSnapshotConfigurationProperty (
        FastLaunchSnapshotConfigurationProperty(..),
        mkFastLaunchSnapshotConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FastLaunchSnapshotConfigurationProperty
  = FastLaunchSnapshotConfigurationProperty {targetResourceCount :: (Prelude.Maybe (Value Prelude.Integer))}
mkFastLaunchSnapshotConfigurationProperty ::
  FastLaunchSnapshotConfigurationProperty
mkFastLaunchSnapshotConfigurationProperty
  = FastLaunchSnapshotConfigurationProperty
      {targetResourceCount = Prelude.Nothing}
instance ToResourceProperties FastLaunchSnapshotConfigurationProperty where
  toResourceProperties FastLaunchSnapshotConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.FastLaunchSnapshotConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetResourceCount" Prelude.<$> targetResourceCount])}
instance JSON.ToJSON FastLaunchSnapshotConfigurationProperty where
  toJSON FastLaunchSnapshotConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetResourceCount" Prelude.<$> targetResourceCount]))
instance Property "TargetResourceCount" FastLaunchSnapshotConfigurationProperty where
  type PropertyType "TargetResourceCount" FastLaunchSnapshotConfigurationProperty = Value Prelude.Integer
  set newValue FastLaunchSnapshotConfigurationProperty {}
    = FastLaunchSnapshotConfigurationProperty
        {targetResourceCount = Prelude.pure newValue, ..}