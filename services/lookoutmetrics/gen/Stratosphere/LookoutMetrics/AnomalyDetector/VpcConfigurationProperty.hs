module Stratosphere.LookoutMetrics.AnomalyDetector.VpcConfigurationProperty (
        VpcConfigurationProperty(..), mkVpcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-vpcconfiguration.html>
    VpcConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-vpcconfiguration.html#cfn-lookoutmetrics-anomalydetector-vpcconfiguration-securitygroupidlist>
                              securityGroupIdList :: (ValueList Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-vpcconfiguration.html#cfn-lookoutmetrics-anomalydetector-vpcconfiguration-subnetidlist>
                              subnetIdList :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConfigurationProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> VpcConfigurationProperty
mkVpcConfigurationProperty securityGroupIdList subnetIdList
  = VpcConfigurationProperty
      {haddock_workaround_ = (),
       securityGroupIdList = securityGroupIdList,
       subnetIdList = subnetIdList}
instance ToResourceProperties VpcConfigurationProperty where
  toResourceProperties VpcConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.VpcConfiguration",
         supportsTags = Prelude.False,
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