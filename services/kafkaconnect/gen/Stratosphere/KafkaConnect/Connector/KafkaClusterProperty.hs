module Stratosphere.KafkaConnect.Connector.KafkaClusterProperty (
        module Exports, KafkaClusterProperty(..), mkKafkaClusterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KafkaConnect.Connector.ApacheKafkaClusterProperty as Exports
import Stratosphere.ResourceProperties
data KafkaClusterProperty
  = KafkaClusterProperty {apacheKafkaCluster :: ApacheKafkaClusterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKafkaClusterProperty ::
  ApacheKafkaClusterProperty -> KafkaClusterProperty
mkKafkaClusterProperty apacheKafkaCluster
  = KafkaClusterProperty {apacheKafkaCluster = apacheKafkaCluster}
instance ToResourceProperties KafkaClusterProperty where
  toResourceProperties KafkaClusterProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.KafkaCluster",
         supportsTags = Prelude.False,
         properties = ["ApacheKafkaCluster" JSON..= apacheKafkaCluster]}
instance JSON.ToJSON KafkaClusterProperty where
  toJSON KafkaClusterProperty {..}
    = JSON.object ["ApacheKafkaCluster" JSON..= apacheKafkaCluster]
instance Property "ApacheKafkaCluster" KafkaClusterProperty where
  type PropertyType "ApacheKafkaCluster" KafkaClusterProperty = ApacheKafkaClusterProperty
  set newValue KafkaClusterProperty {}
    = KafkaClusterProperty {apacheKafkaCluster = newValue, ..}