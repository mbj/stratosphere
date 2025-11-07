module Stratosphere.Cassandra.Keyspace (
        module Exports, Keyspace(..), mkKeyspace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cassandra.Keyspace.ReplicationSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Keyspace
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-keyspace.html>
    Keyspace {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-keyspace.html#cfn-cassandra-keyspace-clientsidetimestampsenabled>
              clientSideTimestampsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-keyspace.html#cfn-cassandra-keyspace-keyspacename>
              keyspaceName :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-keyspace.html#cfn-cassandra-keyspace-replicationspecification>
              replicationSpecification :: (Prelude.Maybe ReplicationSpecificationProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-keyspace.html#cfn-cassandra-keyspace-tags>
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeyspace :: Keyspace
mkKeyspace
  = Keyspace
      {haddock_workaround_ = (),
       clientSideTimestampsEnabled = Prelude.Nothing,
       keyspaceName = Prelude.Nothing,
       replicationSpecification = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Keyspace where
  toResourceProperties Keyspace {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Keyspace", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClientSideTimestampsEnabled"
                              Prelude.<$> clientSideTimestampsEnabled,
                            (JSON..=) "KeyspaceName" Prelude.<$> keyspaceName,
                            (JSON..=) "ReplicationSpecification"
                              Prelude.<$> replicationSpecification,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Keyspace where
  toJSON Keyspace {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClientSideTimestampsEnabled"
                 Prelude.<$> clientSideTimestampsEnabled,
               (JSON..=) "KeyspaceName" Prelude.<$> keyspaceName,
               (JSON..=) "ReplicationSpecification"
                 Prelude.<$> replicationSpecification,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ClientSideTimestampsEnabled" Keyspace where
  type PropertyType "ClientSideTimestampsEnabled" Keyspace = Value Prelude.Bool
  set newValue Keyspace {..}
    = Keyspace
        {clientSideTimestampsEnabled = Prelude.pure newValue, ..}
instance Property "KeyspaceName" Keyspace where
  type PropertyType "KeyspaceName" Keyspace = Value Prelude.Text
  set newValue Keyspace {..}
    = Keyspace {keyspaceName = Prelude.pure newValue, ..}
instance Property "ReplicationSpecification" Keyspace where
  type PropertyType "ReplicationSpecification" Keyspace = ReplicationSpecificationProperty
  set newValue Keyspace {..}
    = Keyspace {replicationSpecification = Prelude.pure newValue, ..}
instance Property "Tags" Keyspace where
  type PropertyType "Tags" Keyspace = [Tag]
  set newValue Keyspace {..}
    = Keyspace {tags = Prelude.pure newValue, ..}