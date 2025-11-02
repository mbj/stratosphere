module Stratosphere.Cassandra.Keyspace.ReplicationSpecificationProperty (
        ReplicationSpecificationProperty(..),
        mkReplicationSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-keyspace-replicationspecification.html>
    ReplicationSpecificationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-keyspace-replicationspecification.html#cfn-cassandra-keyspace-replicationspecification-regionlist>
                                      regionList :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-keyspace-replicationspecification.html#cfn-cassandra-keyspace-replicationspecification-replicationstrategy>
                                      replicationStrategy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationSpecificationProperty ::
  ReplicationSpecificationProperty
mkReplicationSpecificationProperty
  = ReplicationSpecificationProperty
      {haddock_workaround_ = (), regionList = Prelude.Nothing,
       replicationStrategy = Prelude.Nothing}
instance ToResourceProperties ReplicationSpecificationProperty where
  toResourceProperties ReplicationSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Keyspace.ReplicationSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RegionList" Prelude.<$> regionList,
                            (JSON..=) "ReplicationStrategy" Prelude.<$> replicationStrategy])}
instance JSON.ToJSON ReplicationSpecificationProperty where
  toJSON ReplicationSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RegionList" Prelude.<$> regionList,
               (JSON..=) "ReplicationStrategy" Prelude.<$> replicationStrategy]))
instance Property "RegionList" ReplicationSpecificationProperty where
  type PropertyType "RegionList" ReplicationSpecificationProperty = ValueList Prelude.Text
  set newValue ReplicationSpecificationProperty {..}
    = ReplicationSpecificationProperty
        {regionList = Prelude.pure newValue, ..}
instance Property "ReplicationStrategy" ReplicationSpecificationProperty where
  type PropertyType "ReplicationStrategy" ReplicationSpecificationProperty = Value Prelude.Text
  set newValue ReplicationSpecificationProperty {..}
    = ReplicationSpecificationProperty
        {replicationStrategy = Prelude.pure newValue, ..}