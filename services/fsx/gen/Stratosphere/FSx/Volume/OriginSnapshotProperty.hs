module Stratosphere.FSx.Volume.OriginSnapshotProperty (
        OriginSnapshotProperty(..), mkOriginSnapshotProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginSnapshotProperty
  = OriginSnapshotProperty {copyStrategy :: (Value Prelude.Text),
                            snapshotARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginSnapshotProperty ::
  Value Prelude.Text -> Value Prelude.Text -> OriginSnapshotProperty
mkOriginSnapshotProperty copyStrategy snapshotARN
  = OriginSnapshotProperty
      {copyStrategy = copyStrategy, snapshotARN = snapshotARN}
instance ToResourceProperties OriginSnapshotProperty where
  toResourceProperties OriginSnapshotProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Volume.OriginSnapshot",
         supportsTags = Prelude.False,
         properties = ["CopyStrategy" JSON..= copyStrategy,
                       "SnapshotARN" JSON..= snapshotARN]}
instance JSON.ToJSON OriginSnapshotProperty where
  toJSON OriginSnapshotProperty {..}
    = JSON.object
        ["CopyStrategy" JSON..= copyStrategy,
         "SnapshotARN" JSON..= snapshotARN]
instance Property "CopyStrategy" OriginSnapshotProperty where
  type PropertyType "CopyStrategy" OriginSnapshotProperty = Value Prelude.Text
  set newValue OriginSnapshotProperty {..}
    = OriginSnapshotProperty {copyStrategy = newValue, ..}
instance Property "SnapshotARN" OriginSnapshotProperty where
  type PropertyType "SnapshotARN" OriginSnapshotProperty = Value Prelude.Text
  set newValue OriginSnapshotProperty {..}
    = OriginSnapshotProperty {snapshotARN = newValue, ..}