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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-fastlaunchsnapshotconfiguration.html>
    FastLaunchSnapshotConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-fastlaunchsnapshotconfiguration.html#cfn-imagebuilder-distributionconfiguration-fastlaunchsnapshotconfiguration-targetresourcecount>
                                             targetResourceCount :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFastLaunchSnapshotConfigurationProperty ::
  FastLaunchSnapshotConfigurationProperty
mkFastLaunchSnapshotConfigurationProperty
  = FastLaunchSnapshotConfigurationProperty
      {haddock_workaround_ = (), targetResourceCount = Prelude.Nothing}
instance ToResourceProperties FastLaunchSnapshotConfigurationProperty where
  toResourceProperties FastLaunchSnapshotConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.FastLaunchSnapshotConfiguration",
         supportsTags = Prelude.False,
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
  set newValue FastLaunchSnapshotConfigurationProperty {..}
    = FastLaunchSnapshotConfigurationProperty
        {targetResourceCount = Prelude.pure newValue, ..}