module Stratosphere.FSx.Snapshot (
        Snapshot(..), mkSnapshot
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Snapshot
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-snapshot.html>
    Snapshot {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-snapshot.html#cfn-fsx-snapshot-name>
              name :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-snapshot.html#cfn-fsx-snapshot-tags>
              tags :: (Prelude.Maybe [Tag]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-snapshot.html#cfn-fsx-snapshot-volumeid>
              volumeId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnapshot :: Value Prelude.Text -> Value Prelude.Text -> Snapshot
mkSnapshot name volumeId
  = Snapshot
      {haddock_workaround_ = (), name = name, volumeId = volumeId,
       tags = Prelude.Nothing}
instance ToResourceProperties Snapshot where
  toResourceProperties Snapshot {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Snapshot", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "VolumeId" JSON..= volumeId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Snapshot where
  toJSON Snapshot {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "VolumeId" JSON..= volumeId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Name" Snapshot where
  type PropertyType "Name" Snapshot = Value Prelude.Text
  set newValue Snapshot {..} = Snapshot {name = newValue, ..}
instance Property "Tags" Snapshot where
  type PropertyType "Tags" Snapshot = [Tag]
  set newValue Snapshot {..}
    = Snapshot {tags = Prelude.pure newValue, ..}
instance Property "VolumeId" Snapshot where
  type PropertyType "VolumeId" Snapshot = Value Prelude.Text
  set newValue Snapshot {..} = Snapshot {volumeId = newValue, ..}