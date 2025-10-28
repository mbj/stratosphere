module Stratosphere.MSK.Replicator.KafkaClusterClientVpcConfigProperty (
        KafkaClusterClientVpcConfigProperty(..),
        mkKafkaClusterClientVpcConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KafkaClusterClientVpcConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-kafkaclusterclientvpcconfig.html>
    KafkaClusterClientVpcConfigProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-kafkaclusterclientvpcconfig.html#cfn-msk-replicator-kafkaclusterclientvpcconfig-securitygroupids>
                                         securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-kafkaclusterclientvpcconfig.html#cfn-msk-replicator-kafkaclusterclientvpcconfig-subnetids>
                                         subnetIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKafkaClusterClientVpcConfigProperty ::
  ValueList Prelude.Text -> KafkaClusterClientVpcConfigProperty
mkKafkaClusterClientVpcConfigProperty subnetIds
  = KafkaClusterClientVpcConfigProperty
      {haddock_workaround_ = (), subnetIds = subnetIds,
       securityGroupIds = Prelude.Nothing}
instance ToResourceProperties KafkaClusterClientVpcConfigProperty where
  toResourceProperties KafkaClusterClientVpcConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Replicator.KafkaClusterClientVpcConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetIds" JSON..= subnetIds]
                           (Prelude.catMaybes
                              [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds]))}
instance JSON.ToJSON KafkaClusterClientVpcConfigProperty where
  toJSON KafkaClusterClientVpcConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubnetIds" JSON..= subnetIds]
              (Prelude.catMaybes
                 [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds])))
instance Property "SecurityGroupIds" KafkaClusterClientVpcConfigProperty where
  type PropertyType "SecurityGroupIds" KafkaClusterClientVpcConfigProperty = ValueList Prelude.Text
  set newValue KafkaClusterClientVpcConfigProperty {..}
    = KafkaClusterClientVpcConfigProperty
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" KafkaClusterClientVpcConfigProperty where
  type PropertyType "SubnetIds" KafkaClusterClientVpcConfigProperty = ValueList Prelude.Text
  set newValue KafkaClusterClientVpcConfigProperty {..}
    = KafkaClusterClientVpcConfigProperty {subnetIds = newValue, ..}