module Stratosphere.DMS.ReplicationSubnetGroup (
        ReplicationSubnetGroup(..), mkReplicationSubnetGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ReplicationSubnetGroup
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html>
    ReplicationSubnetGroup {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-replicationsubnetgroupdescription>
                            replicationSubnetGroupDescription :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-replicationsubnetgroupidentifier>
                            replicationSubnetGroupIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-subnetids>
                            subnetIds :: (ValueList Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationsubnetgroup.html#cfn-dms-replicationsubnetgroup-tags>
                            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationSubnetGroup ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> ReplicationSubnetGroup
mkReplicationSubnetGroup
  replicationSubnetGroupDescription
  subnetIds
  = ReplicationSubnetGroup
      {haddock_workaround_ = (),
       replicationSubnetGroupDescription = replicationSubnetGroupDescription,
       subnetIds = subnetIds,
       replicationSubnetGroupIdentifier = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ReplicationSubnetGroup where
  toResourceProperties ReplicationSubnetGroup {..}
    = ResourceProperties
        {awsType = "AWS::DMS::ReplicationSubnetGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ReplicationSubnetGroupDescription"
                              JSON..= replicationSubnetGroupDescription,
                            "SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "ReplicationSubnetGroupIdentifier"
                                 Prelude.<$> replicationSubnetGroupIdentifier,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ReplicationSubnetGroup where
  toJSON ReplicationSubnetGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ReplicationSubnetGroupDescription"
                 JSON..= replicationSubnetGroupDescription,
               "SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "ReplicationSubnetGroupIdentifier"
                    Prelude.<$> replicationSubnetGroupIdentifier,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ReplicationSubnetGroupDescription" ReplicationSubnetGroup where
  type PropertyType "ReplicationSubnetGroupDescription" ReplicationSubnetGroup = Value Prelude.Text
  set newValue ReplicationSubnetGroup {..}
    = ReplicationSubnetGroup
        {replicationSubnetGroupDescription = newValue, ..}
instance Property "ReplicationSubnetGroupIdentifier" ReplicationSubnetGroup where
  type PropertyType "ReplicationSubnetGroupIdentifier" ReplicationSubnetGroup = Value Prelude.Text
  set newValue ReplicationSubnetGroup {..}
    = ReplicationSubnetGroup
        {replicationSubnetGroupIdentifier = Prelude.pure newValue, ..}
instance Property "SubnetIds" ReplicationSubnetGroup where
  type PropertyType "SubnetIds" ReplicationSubnetGroup = ValueList Prelude.Text
  set newValue ReplicationSubnetGroup {..}
    = ReplicationSubnetGroup {subnetIds = newValue, ..}
instance Property "Tags" ReplicationSubnetGroup where
  type PropertyType "Tags" ReplicationSubnetGroup = [Tag]
  set newValue ReplicationSubnetGroup {..}
    = ReplicationSubnetGroup {tags = Prelude.pure newValue, ..}