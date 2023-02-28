module Stratosphere.KinesisAnalyticsV2.Application.VpcConfigurationProperty (
        VpcConfigurationProperty(..), mkVpcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConfigurationProperty
  = VpcConfigurationProperty {securityGroupIds :: (ValueList Prelude.Text),
                              subnetIds :: (ValueList Prelude.Text)}
mkVpcConfigurationProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> VpcConfigurationProperty
mkVpcConfigurationProperty securityGroupIds subnetIds
  = VpcConfigurationProperty
      {securityGroupIds = securityGroupIds, subnetIds = subnetIds}
instance ToResourceProperties VpcConfigurationProperty where
  toResourceProperties VpcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.VpcConfiguration",
         supportsTags = Prelude.False,
         properties = ["SecurityGroupIds" JSON..= securityGroupIds,
                       "SubnetIds" JSON..= subnetIds]}
instance JSON.ToJSON VpcConfigurationProperty where
  toJSON VpcConfigurationProperty {..}
    = JSON.object
        ["SecurityGroupIds" JSON..= securityGroupIds,
         "SubnetIds" JSON..= subnetIds]
instance Property "SecurityGroupIds" VpcConfigurationProperty where
  type PropertyType "SecurityGroupIds" VpcConfigurationProperty = ValueList Prelude.Text
  set newValue VpcConfigurationProperty {..}
    = VpcConfigurationProperty {securityGroupIds = newValue, ..}
instance Property "SubnetIds" VpcConfigurationProperty where
  type PropertyType "SubnetIds" VpcConfigurationProperty = ValueList Prelude.Text
  set newValue VpcConfigurationProperty {..}
    = VpcConfigurationProperty {subnetIds = newValue, ..}