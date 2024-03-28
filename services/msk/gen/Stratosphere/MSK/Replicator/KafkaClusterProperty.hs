module Stratosphere.MSK.Replicator.KafkaClusterProperty (
        module Exports, KafkaClusterProperty(..), mkKafkaClusterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Replicator.AmazonMskClusterProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Replicator.KafkaClusterClientVpcConfigProperty as Exports
import Stratosphere.ResourceProperties
data KafkaClusterProperty
  = KafkaClusterProperty {amazonMskCluster :: AmazonMskClusterProperty,
                          vpcConfig :: KafkaClusterClientVpcConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKafkaClusterProperty ::
  AmazonMskClusterProperty
  -> KafkaClusterClientVpcConfigProperty -> KafkaClusterProperty
mkKafkaClusterProperty amazonMskCluster vpcConfig
  = KafkaClusterProperty
      {amazonMskCluster = amazonMskCluster, vpcConfig = vpcConfig}
instance ToResourceProperties KafkaClusterProperty where
  toResourceProperties KafkaClusterProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Replicator.KafkaCluster",
         supportsTags = Prelude.False,
         properties = ["AmazonMskCluster" JSON..= amazonMskCluster,
                       "VpcConfig" JSON..= vpcConfig]}
instance JSON.ToJSON KafkaClusterProperty where
  toJSON KafkaClusterProperty {..}
    = JSON.object
        ["AmazonMskCluster" JSON..= amazonMskCluster,
         "VpcConfig" JSON..= vpcConfig]
instance Property "AmazonMskCluster" KafkaClusterProperty where
  type PropertyType "AmazonMskCluster" KafkaClusterProperty = AmazonMskClusterProperty
  set newValue KafkaClusterProperty {..}
    = KafkaClusterProperty {amazonMskCluster = newValue, ..}
instance Property "VpcConfig" KafkaClusterProperty where
  type PropertyType "VpcConfig" KafkaClusterProperty = KafkaClusterClientVpcConfigProperty
  set newValue KafkaClusterProperty {..}
    = KafkaClusterProperty {vpcConfig = newValue, ..}