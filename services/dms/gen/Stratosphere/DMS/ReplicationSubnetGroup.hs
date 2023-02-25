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
  = ReplicationSubnetGroup {replicationSubnetGroupDescription :: (Value Prelude.Text),
                            replicationSubnetGroupIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                            subnetIds :: (ValueList (Value Prelude.Text)),
                            tags :: (Prelude.Maybe [Tag])}
mkReplicationSubnetGroup ::
  Value Prelude.Text
  -> ValueList (Value Prelude.Text) -> ReplicationSubnetGroup
mkReplicationSubnetGroup
  replicationSubnetGroupDescription
  subnetIds
  = ReplicationSubnetGroup
      {replicationSubnetGroupDescription = replicationSubnetGroupDescription,
       subnetIds = subnetIds,
       replicationSubnetGroupIdentifier = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ReplicationSubnetGroup where
  toResourceProperties ReplicationSubnetGroup {..}
    = ResourceProperties
        {awsType = "AWS::DMS::ReplicationSubnetGroup",
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
  type PropertyType "SubnetIds" ReplicationSubnetGroup = ValueList (Value Prelude.Text)
  set newValue ReplicationSubnetGroup {..}
    = ReplicationSubnetGroup {subnetIds = newValue, ..}
instance Property "Tags" ReplicationSubnetGroup where
  type PropertyType "Tags" ReplicationSubnetGroup = [Tag]
  set newValue ReplicationSubnetGroup {..}
    = ReplicationSubnetGroup {tags = Prelude.pure newValue, ..}