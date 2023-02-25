module Stratosphere.KinesisFirehose.DeliveryStream.VpcConfigurationProperty (
        VpcConfigurationProperty(..), mkVpcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConfigurationProperty
  = VpcConfigurationProperty {roleARN :: (Value Prelude.Text),
                              securityGroupIds :: (ValueList (Value Prelude.Text)),
                              subnetIds :: (ValueList (Value Prelude.Text))}
mkVpcConfigurationProperty ::
  Value Prelude.Text
  -> ValueList (Value Prelude.Text)
     -> ValueList (Value Prelude.Text) -> VpcConfigurationProperty
mkVpcConfigurationProperty roleARN securityGroupIds subnetIds
  = VpcConfigurationProperty
      {roleARN = roleARN, securityGroupIds = securityGroupIds,
       subnetIds = subnetIds}
instance ToResourceProperties VpcConfigurationProperty where
  toResourceProperties VpcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.VpcConfiguration",
         properties = ["RoleARN" JSON..= roleARN,
                       "SecurityGroupIds" JSON..= securityGroupIds,
                       "SubnetIds" JSON..= subnetIds]}
instance JSON.ToJSON VpcConfigurationProperty where
  toJSON VpcConfigurationProperty {..}
    = JSON.object
        ["RoleARN" JSON..= roleARN,
         "SecurityGroupIds" JSON..= securityGroupIds,
         "SubnetIds" JSON..= subnetIds]
instance Property "RoleARN" VpcConfigurationProperty where
  type PropertyType "RoleARN" VpcConfigurationProperty = Value Prelude.Text
  set newValue VpcConfigurationProperty {..}
    = VpcConfigurationProperty {roleARN = newValue, ..}
instance Property "SecurityGroupIds" VpcConfigurationProperty where
  type PropertyType "SecurityGroupIds" VpcConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue VpcConfigurationProperty {..}
    = VpcConfigurationProperty {securityGroupIds = newValue, ..}
instance Property "SubnetIds" VpcConfigurationProperty where
  type PropertyType "SubnetIds" VpcConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue VpcConfigurationProperty {..}
    = VpcConfigurationProperty {subnetIds = newValue, ..}