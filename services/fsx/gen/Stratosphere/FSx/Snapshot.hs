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
  = Snapshot {name :: (Value Prelude.Text),
              tags :: (Prelude.Maybe [Tag]),
              volumeId :: (Value Prelude.Text)}
mkSnapshot :: Value Prelude.Text -> Value Prelude.Text -> Snapshot
mkSnapshot name volumeId
  = Snapshot
      {name = name, volumeId = volumeId, tags = Prelude.Nothing}
instance ToResourceProperties Snapshot where
  toResourceProperties Snapshot {..}
    = ResourceProperties
        {awsType = "AWS::FSx::Snapshot",
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