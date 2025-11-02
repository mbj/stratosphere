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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-kafkacluster.html>
    KafkaClusterProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-kafkacluster.html#cfn-msk-replicator-kafkacluster-amazonmskcluster>
                          amazonMskCluster :: AmazonMskClusterProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-kafkacluster.html#cfn-msk-replicator-kafkacluster-vpcconfig>
                          vpcConfig :: KafkaClusterClientVpcConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKafkaClusterProperty ::
  AmazonMskClusterProperty
  -> KafkaClusterClientVpcConfigProperty -> KafkaClusterProperty
mkKafkaClusterProperty amazonMskCluster vpcConfig
  = KafkaClusterProperty
      {haddock_workaround_ = (), amazonMskCluster = amazonMskCluster,
       vpcConfig = vpcConfig}
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