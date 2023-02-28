module Stratosphere.Lightsail.Instance.AutoSnapshotAddOnProperty (
        AutoSnapshotAddOnProperty(..), mkAutoSnapshotAddOnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoSnapshotAddOnProperty
  = AutoSnapshotAddOnProperty {snapshotTimeOfDay :: (Prelude.Maybe (Value Prelude.Text))}
mkAutoSnapshotAddOnProperty :: AutoSnapshotAddOnProperty
mkAutoSnapshotAddOnProperty
  = AutoSnapshotAddOnProperty {snapshotTimeOfDay = Prelude.Nothing}
instance ToResourceProperties AutoSnapshotAddOnProperty where
  toResourceProperties AutoSnapshotAddOnProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Instance.AutoSnapshotAddOn",
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
  set newValue AutoSnapshotAddOnProperty {}
    = AutoSnapshotAddOnProperty
        {snapshotTimeOfDay = Prelude.pure newValue, ..}