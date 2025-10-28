module Stratosphere.ECR.ReplicationConfiguration.ReplicationDestinationProperty (
        ReplicationDestinationProperty(..),
        mkReplicationDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-replicationconfiguration-replicationdestination.html>
    ReplicationDestinationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-replicationconfiguration-replicationdestination.html#cfn-ecr-replicationconfiguration-replicationdestination-region>
                                    region :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-replicationconfiguration-replicationdestination.html#cfn-ecr-replicationconfiguration-replicationdestination-registryid>
                                    registryId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationDestinationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ReplicationDestinationProperty
mkReplicationDestinationProperty region registryId
  = ReplicationDestinationProperty
      {haddock_workaround_ = (), region = region,
       registryId = registryId}
instance ToResourceProperties ReplicationDestinationProperty where
  toResourceProperties ReplicationDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECR::ReplicationConfiguration.ReplicationDestination",
         supportsTags = Prelude.False,
         properties = ["Region" JSON..= region,
                       "RegistryId" JSON..= registryId]}
instance JSON.ToJSON ReplicationDestinationProperty where
  toJSON ReplicationDestinationProperty {..}
    = JSON.object
        ["Region" JSON..= region, "RegistryId" JSON..= registryId]
instance Property "Region" ReplicationDestinationProperty where
  type PropertyType "Region" ReplicationDestinationProperty = Value Prelude.Text
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty {region = newValue, ..}
instance Property "RegistryId" ReplicationDestinationProperty where
  type PropertyType "RegistryId" ReplicationDestinationProperty = Value Prelude.Text
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty {registryId = newValue, ..}