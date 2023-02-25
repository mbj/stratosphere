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
  = ReplicationDestinationProperty {region :: (Value Prelude.Text),
                                    registryId :: (Value Prelude.Text)}
mkReplicationDestinationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ReplicationDestinationProperty
mkReplicationDestinationProperty region registryId
  = ReplicationDestinationProperty
      {region = region, registryId = registryId}
instance ToResourceProperties ReplicationDestinationProperty where
  toResourceProperties ReplicationDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECR::ReplicationConfiguration.ReplicationDestination",
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