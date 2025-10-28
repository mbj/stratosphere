module Stratosphere.FSx.Volume.OriginSnapshotProperty (
        OriginSnapshotProperty(..), mkOriginSnapshotProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OriginSnapshotProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-openzfsconfiguration-originsnapshot.html>
    OriginSnapshotProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-openzfsconfiguration-originsnapshot.html#cfn-fsx-volume-openzfsconfiguration-originsnapshot-copystrategy>
                            copyStrategy :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-volume-openzfsconfiguration-originsnapshot.html#cfn-fsx-volume-openzfsconfiguration-originsnapshot-snapshotarn>
                            snapshotARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOriginSnapshotProperty ::
  Value Prelude.Text -> Value Prelude.Text -> OriginSnapshotProperty
mkOriginSnapshotProperty copyStrategy snapshotARN
  = OriginSnapshotProperty
      {haddock_workaround_ = (), copyStrategy = copyStrategy,
       snapshotARN = snapshotARN}
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