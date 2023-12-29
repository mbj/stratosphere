module Stratosphere.KinesisAnalyticsV2.Application.ApplicationSnapshotConfigurationProperty (
        ApplicationSnapshotConfigurationProperty(..),
        mkApplicationSnapshotConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationSnapshotConfigurationProperty
  = ApplicationSnapshotConfigurationProperty {snapshotsEnabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationSnapshotConfigurationProperty ::
  Value Prelude.Bool -> ApplicationSnapshotConfigurationProperty
mkApplicationSnapshotConfigurationProperty snapshotsEnabled
  = ApplicationSnapshotConfigurationProperty
      {snapshotsEnabled = snapshotsEnabled}
instance ToResourceProperties ApplicationSnapshotConfigurationProperty where
  toResourceProperties ApplicationSnapshotConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.ApplicationSnapshotConfiguration",
         supportsTags = Prelude.False,
         properties = ["SnapshotsEnabled" JSON..= snapshotsEnabled]}
instance JSON.ToJSON ApplicationSnapshotConfigurationProperty where
  toJSON ApplicationSnapshotConfigurationProperty {..}
    = JSON.object ["SnapshotsEnabled" JSON..= snapshotsEnabled]
instance Property "SnapshotsEnabled" ApplicationSnapshotConfigurationProperty where
  type PropertyType "SnapshotsEnabled" ApplicationSnapshotConfigurationProperty = Value Prelude.Bool
  set newValue ApplicationSnapshotConfigurationProperty {}
    = ApplicationSnapshotConfigurationProperty
        {snapshotsEnabled = newValue, ..}