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
  = VpcDestinationPropertiesProperty {roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                      securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      vpcId :: (Prelude.Maybe (Value Prelude.Text))}
mkVpcDestinationPropertiesProperty ::
  VpcDestinationPropertiesProperty
mkVpcDestinationPropertiesProperty
  = VpcDestinationPropertiesProperty
      {roleArn = Prelude.Nothing, securityGroups = Prelude.Nothing,
       subnetIds = Prelude.Nothing, vpcId = Prelude.Nothing}
instance ToResourceProperties VpcDestinationPropertiesProperty where
  toResourceProperties VpcDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRuleDestination.VpcDestinationProperties",
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