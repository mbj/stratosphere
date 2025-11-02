module Stratosphere.IoT.TopicRuleDestination.VpcDestinationPropertiesProperty (
        VpcDestinationPropertiesProperty(..),
        mkVpcDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcDestinationPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicruledestination-vpcdestinationproperties.html>
    VpcDestinationPropertiesProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicruledestination-vpcdestinationproperties.html#cfn-iot-topicruledestination-vpcdestinationproperties-rolearn>
                                      roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicruledestination-vpcdestinationproperties.html#cfn-iot-topicruledestination-vpcdestinationproperties-securitygroups>
                                      securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicruledestination-vpcdestinationproperties.html#cfn-iot-topicruledestination-vpcdestinationproperties-subnetids>
                                      subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicruledestination-vpcdestinationproperties.html#cfn-iot-topicruledestination-vpcdestinationproperties-vpcid>
                                      vpcId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcDestinationPropertiesProperty ::
  VpcDestinationPropertiesProperty
mkVpcDestinationPropertiesProperty
  = VpcDestinationPropertiesProperty
      {haddock_workaround_ = (), roleArn = Prelude.Nothing,
       securityGroups = Prelude.Nothing, subnetIds = Prelude.Nothing,
       vpcId = Prelude.Nothing}
instance ToResourceProperties VpcDestinationPropertiesProperty where
  toResourceProperties VpcDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRuleDestination.VpcDestinationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                            (JSON..=) "VpcId" Prelude.<$> vpcId])}
instance JSON.ToJSON VpcDestinationPropertiesProperty where
  toJSON VpcDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
               (JSON..=) "VpcId" Prelude.<$> vpcId]))
instance Property "RoleArn" VpcDestinationPropertiesProperty where
  type PropertyType "RoleArn" VpcDestinationPropertiesProperty = Value Prelude.Text
  set newValue VpcDestinationPropertiesProperty {..}
    = VpcDestinationPropertiesProperty
        {roleArn = Prelude.pure newValue, ..}
instance Property "SecurityGroups" VpcDestinationPropertiesProperty where
  type PropertyType "SecurityGroups" VpcDestinationPropertiesProperty = ValueList Prelude.Text
  set newValue VpcDestinationPropertiesProperty {..}
    = VpcDestinationPropertiesProperty
        {securityGroups = Prelude.pure newValue, ..}
instance Property "SubnetIds" VpcDestinationPropertiesProperty where
  type PropertyType "SubnetIds" VpcDestinationPropertiesProperty = ValueList Prelude.Text
  set newValue VpcDestinationPropertiesProperty {..}
    = VpcDestinationPropertiesProperty
        {subnetIds = Prelude.pure newValue, ..}
instance Property "VpcId" VpcDestinationPropertiesProperty where
  type PropertyType "VpcId" VpcDestinationPropertiesProperty = Value Prelude.Text
  set newValue VpcDestinationPropertiesProperty {..}
    = VpcDestinationPropertiesProperty
        {vpcId = Prelude.pure newValue, ..}