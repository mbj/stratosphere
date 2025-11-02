module Stratosphere.Lightsail.Disk.AutoSnapshotAddOnProperty (
        AutoSnapshotAddOnProperty(..), mkAutoSnapshotAddOnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoSnapshotAddOnProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-disk-autosnapshotaddon.html>
    AutoSnapshotAddOnProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-disk-autosnapshotaddon.html#cfn-lightsail-disk-autosnapshotaddon-snapshottimeofday>
                               snapshotTimeOfDay :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoSnapshotAddOnProperty :: AutoSnapshotAddOnProperty
mkAutoSnapshotAddOnProperty
  = AutoSnapshotAddOnProperty
      {haddock_workaround_ = (), snapshotTimeOfDay = Prelude.Nothing}
instance ToResourceProperties AutoSnapshotAddOnProperty where
  toResourceProperties AutoSnapshotAddOnProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Disk.AutoSnapshotAddOn",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SnapshotTimeOfDay" Prelude.<$> snapshotTimeOfDay])}
instance JSON.ToJSON AutoSnapshotAddOnProperty where
  toJSON AutoSnapshotAddOnProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SnapshotTimeOfDay" Prelude.<$> snapshotTimeOfDay]))
instance Property "SnapshotTimeOfDay" AutoSnapshotAddOnProperty where
  type PropertyType "SnapshotTimeOfDay" AutoSnapshotAddOnProperty = Value Prelude.Text
  set newValue AutoSnapshotAddOnProperty {..}
    = AutoSnapshotAddOnProperty
        {snapshotTimeOfDay = Prelude.pure newValue, ..}