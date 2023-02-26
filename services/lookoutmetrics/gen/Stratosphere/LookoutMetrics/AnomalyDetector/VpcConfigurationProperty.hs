module Stratosphere.LookoutMetrics.AnomalyDetector.VpcConfigurationProperty (
        VpcConfigurationProperty(..), mkVpcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConfigurationProperty
  = VpcConfigurationProperty {securityGroupIdList :: (ValueList Prelude.Text),
                              subnetIdList :: (ValueList Prelude.Text)}
mkVpcConfigurationProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> VpcConfigurationProperty
mkVpcConfigurationProperty securityGroupIdList subnetIdList
  = VpcConfigurationProperty
      {securityGroupIdList = securityGroupIdList,
       subnetIdList = subnetIdList}
instance ToResourceProperties VpcConfigurationProperty where
  toResourceProperties VpcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.VpcConfiguration",
         properties = ["SecurityGroupIdList" JSON..= securityGroupIdList,
                       "SubnetIdList" JSON..= subnetIdList]}
instance JSON.ToJSON VpcConfigurationProperty where
  toJSON VpcConfigurationProperty {..}
    = JSON.object
        ["SecurityGroupIdList" JSON..= securityGroupIdList,
         "SubnetIdList" JSON..= subnetIdList]
instance Property "SecurityGroupIdList" VpcConfigurationProperty where
  type PropertyType "SecurityGroupIdList" VpcConfigurationProperty = ValueList Prelude.Text
  set newValue VpcConfigurationProperty {..}
    = VpcConfigurationProperty {securityGroupIdList = newValue, ..}
instance Property "SubnetIdList" VpcConfigurationProperty where
  type PropertyType "SubnetIdList" VpcConfigurationProperty = ValueList Prelude.Text
  set newValue VpcConfigurationProperty {..}
    = VpcConfigurationProperty {subnetIdList = newValue, ..}