module Stratosphere.Lightsail.InstanceSnapshot (
        InstanceSnapshot(..), mkInstanceSnapshot
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data InstanceSnapshot
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instancesnapshot.html>
    InstanceSnapshot {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instancesnapshot.html#cfn-lightsail-instancesnapshot-instancename>
                      instanceName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instancesnapshot.html#cfn-lightsail-instancesnapshot-instancesnapshotname>
                      instanceSnapshotName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instancesnapshot.html#cfn-lightsail-instancesnapshot-tags>
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceSnapshot ::
  Value Prelude.Text -> Value Prelude.Text -> InstanceSnapshot
mkInstanceSnapshot instanceName instanceSnapshotName
  = InstanceSnapshot
      {haddock_workaround_ = (), instanceName = instanceName,
       instanceSnapshotName = instanceSnapshotName,
       tags = Prelude.Nothing}
instance ToResourceProperties InstanceSnapshot where
  toResourceProperties InstanceSnapshot {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::InstanceSnapshot",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceName" JSON..= instanceName,
                            "InstanceSnapshotName" JSON..= instanceSnapshotName]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON InstanceSnapshot where
  toJSON InstanceSnapshot {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceName" JSON..= instanceName,
               "InstanceSnapshotName" JSON..= instanceSnapshotName]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InstanceName" InstanceSnapshot where
  type PropertyType "InstanceName" InstanceSnapshot = Value Prelude.Text
  set newValue InstanceSnapshot {..}
    = InstanceSnapshot {instanceName = newValue, ..}
instance Property "InstanceSnapshotName" InstanceSnapshot where
  type PropertyType "InstanceSnapshotName" InstanceSnapshot = Value Prelude.Text
  set newValue InstanceSnapshot {..}
    = InstanceSnapshot {instanceSnapshotName = newValue, ..}
instance Property "Tags" InstanceSnapshot where
  type PropertyType "Tags" InstanceSnapshot = [Tag]
  set newValue InstanceSnapshot {..}
    = InstanceSnapshot {tags = Prelude.pure newValue, ..}