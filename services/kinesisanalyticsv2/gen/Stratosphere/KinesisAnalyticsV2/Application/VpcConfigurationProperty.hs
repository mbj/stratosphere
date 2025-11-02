module Stratosphere.KinesisAnalyticsV2.Application.VpcConfigurationProperty (
        VpcConfigurationProperty(..), mkVpcConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-vpcconfiguration.html>
    VpcConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-vpcconfiguration.html#cfn-kinesisanalyticsv2-application-vpcconfiguration-securitygroupids>
                              securityGroupIds :: (ValueList Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-vpcconfiguration.html#cfn-kinesisanalyticsv2-application-vpcconfiguration-subnetids>
                              subnetIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConfigurationProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> VpcConfigurationProperty
mkVpcConfigurationProperty securityGroupIds subnetIds
  = VpcConfigurationProperty
      {haddock_workaround_ = (), securityGroupIds = securityGroupIds,
       subnetIds = subnetIds}
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