module Stratosphere.Lightsail.DiskSnapshot (
        DiskSnapshot(..), mkDiskSnapshot
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DiskSnapshot
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-disksnapshot.html>
    DiskSnapshot {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-disksnapshot.html#cfn-lightsail-disksnapshot-diskname>
                  diskName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-disksnapshot.html#cfn-lightsail-disksnapshot-disksnapshotname>
                  diskSnapshotName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-disksnapshot.html#cfn-lightsail-disksnapshot-tags>
                  tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDiskSnapshot ::
  Value Prelude.Text -> Value Prelude.Text -> DiskSnapshot
mkDiskSnapshot diskName diskSnapshotName
  = DiskSnapshot
      {haddock_workaround_ = (), diskName = diskName,
       diskSnapshotName = diskSnapshotName, tags = Prelude.Nothing}
instance ToResourceProperties DiskSnapshot where
  toResourceProperties DiskSnapshot {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::DiskSnapshot",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DiskName" JSON..= diskName,
                            "DiskSnapshotName" JSON..= diskSnapshotName]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DiskSnapshot where
  toJSON DiskSnapshot {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DiskName" JSON..= diskName,
               "DiskSnapshotName" JSON..= diskSnapshotName]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DiskName" DiskSnapshot where
  type PropertyType "DiskName" DiskSnapshot = Value Prelude.Text
  set newValue DiskSnapshot {..}
    = DiskSnapshot {diskName = newValue, ..}
instance Property "DiskSnapshotName" DiskSnapshot where
  type PropertyType "DiskSnapshotName" DiskSnapshot = Value Prelude.Text
  set newValue DiskSnapshot {..}
    = DiskSnapshot {diskSnapshotName = newValue, ..}
instance Property "Tags" DiskSnapshot where
  type PropertyType "Tags" DiskSnapshot = [Tag]
  set newValue DiskSnapshot {..}
    = DiskSnapshot {tags = Prelude.pure newValue, ..}