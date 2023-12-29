module Stratosphere.KafkaConnect.Connector.ApacheKafkaClusterProperty (
        module Exports, ApacheKafkaClusterProperty(..),
        mkApacheKafkaClusterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.VpcProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApacheKafkaClusterProperty
  = ApacheKafkaClusterProperty {bootstrapServers :: (Value Prelude.Text),
                                vpc :: VpcProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApacheKafkaClusterProperty ::
  Value Prelude.Text -> VpcProperty -> ApacheKafkaClusterProperty
mkApacheKafkaClusterProperty bootstrapServers vpc
  = ApacheKafkaClusterProperty
      {bootstrapServers = bootstrapServers, vpc = vpc}
instance ToResourceProperties ApacheKafkaClusterProperty where
  toResourceProperties ApacheKafkaClusterProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.ApacheKafkaCluster",
         supportsTags = Prelude.False,
         properties = ["BootstrapServers" JSON..= bootstrapServers,
                       "Vpc" JSON..= vpc]}
instance JSON.ToJSON ApacheKafkaClusterProperty where
  toJSON ApacheKafkaClusterProperty {..}
    = JSON.object
        ["BootstrapServers" JSON..= bootstrapServers, "Vpc" JSON..= vpc]
instance Property "BootstrapServers" ApacheKafkaClusterProperty where
  type PropertyType "BootstrapServers" ApacheKafkaClusterProperty = Value Prelude.Text
  set newValue ApacheKafkaClusterProperty {..}
    = ApacheKafkaClusterProperty {bootstrapServers = newValue, ..}
instance Property "Vpc" ApacheKafkaClusterProperty where
  type PropertyType "Vpc" ApacheKafkaClusterProperty = VpcProperty
  set newValue ApacheKafkaClusterProperty {..}
    = ApacheKafkaClusterProperty {vpc = newValue, ..}