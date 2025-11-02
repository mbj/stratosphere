module Stratosphere.ElastiCache.GlobalReplicationGroup.GlobalReplicationGroupMemberProperty (
        GlobalReplicationGroupMemberProperty(..),
        mkGlobalReplicationGroupMemberProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlobalReplicationGroupMemberProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-globalreplicationgroup-globalreplicationgroupmember.html>
    GlobalReplicationGroupMemberProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-globalreplicationgroup-globalreplicationgroupmember.html#cfn-elasticache-globalreplicationgroup-globalreplicationgroupmember-replicationgroupid>
                                          replicationGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-globalreplicationgroup-globalreplicationgroupmember.html#cfn-elasticache-globalreplicationgroup-globalreplicationgroupmember-replicationgroupregion>
                                          replicationGroupRegion :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-globalreplicationgroup-globalreplicationgroupmember.html#cfn-elasticache-globalreplicationgroup-globalreplicationgroupmember-role>
                                          role :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalReplicationGroupMemberProperty ::
  GlobalReplicationGroupMemberProperty
mkGlobalReplicationGroupMemberProperty
  = GlobalReplicationGroupMemberProperty
      {haddock_workaround_ = (), replicationGroupId = Prelude.Nothing,
       replicationGroupRegion = Prelude.Nothing, role = Prelude.Nothing}
instance ToResourceProperties GlobalReplicationGroupMemberProperty where
  toResourceProperties GlobalReplicationGroupMemberProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::GlobalReplicationGroup.GlobalReplicationGroupMember",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReplicationGroupId" Prelude.<$> replicationGroupId,
                            (JSON..=) "ReplicationGroupRegion"
                              Prelude.<$> replicationGroupRegion,
                            (JSON..=) "Role" Prelude.<$> role])}
instance JSON.ToJSON GlobalReplicationGroupMemberProperty where
  toJSON GlobalReplicationGroupMemberProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReplicationGroupId" Prelude.<$> replicationGroupId,
               (JSON..=) "ReplicationGroupRegion"
                 Prelude.<$> replicationGroupRegion,
               (JSON..=) "Role" Prelude.<$> role]))
instance Property "ReplicationGroupId" GlobalReplicationGroupMemberProperty where
  type PropertyType "ReplicationGroupId" GlobalReplicationGroupMemberProperty = Value Prelude.Text
  set newValue GlobalReplicationGroupMemberProperty {..}
    = GlobalReplicationGroupMemberProperty
        {replicationGroupId = Prelude.pure newValue, ..}
instance Property "ReplicationGroupRegion" GlobalReplicationGroupMemberProperty where
  type PropertyType "ReplicationGroupRegion" GlobalReplicationGroupMemberProperty = Value Prelude.Text
  set newValue GlobalReplicationGroupMemberProperty {..}
    = GlobalReplicationGroupMemberProperty
        {replicationGroupRegion = Prelude.pure newValue, ..}
instance Property "Role" GlobalReplicationGroupMemberProperty where
  type PropertyType "Role" GlobalReplicationGroupMemberProperty = Value Prelude.Text
  set newValue GlobalReplicationGroupMemberProperty {..}
    = GlobalReplicationGroupMemberProperty
        {role = Prelude.pure newValue, ..}