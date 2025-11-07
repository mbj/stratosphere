module Stratosphere.Lex.Bot.ReplicationProperty (
        ReplicationProperty(..), mkReplicationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-replication.html>
    ReplicationProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-replication.html#cfn-lex-bot-replication-replicaregions>
                         replicaRegions :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationProperty ::
  ValueList Prelude.Text -> ReplicationProperty
mkReplicationProperty replicaRegions
  = ReplicationProperty
      {haddock_workaround_ = (), replicaRegions = replicaRegions}
instance ToResourceProperties ReplicationProperty where
  toResourceProperties ReplicationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.Replication",
         supportsTags = Prelude.False,
         properties = ["ReplicaRegions" JSON..= replicaRegions]}
instance JSON.ToJSON ReplicationProperty where
  toJSON ReplicationProperty {..}
    = JSON.object ["ReplicaRegions" JSON..= replicaRegions]
instance Property "ReplicaRegions" ReplicationProperty where
  type PropertyType "ReplicaRegions" ReplicationProperty = ValueList Prelude.Text
  set newValue ReplicationProperty {..}
    = ReplicationProperty {replicaRegions = newValue, ..}