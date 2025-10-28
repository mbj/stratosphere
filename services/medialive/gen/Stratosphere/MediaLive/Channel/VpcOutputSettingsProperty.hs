module Stratosphere.MediaLive.Channel.VpcOutputSettingsProperty (
        VpcOutputSettingsProperty(..), mkVpcOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcOutputSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-vpcoutputsettings.html>
    VpcOutputSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-vpcoutputsettings.html#cfn-medialive-channel-vpcoutputsettings-publicaddressallocationids>
                               publicAddressAllocationIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-vpcoutputsettings.html#cfn-medialive-channel-vpcoutputsettings-securitygroupids>
                               securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-vpcoutputsettings.html#cfn-medialive-channel-vpcoutputsettings-subnetids>
                               subnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcOutputSettingsProperty :: VpcOutputSettingsProperty
mkVpcOutputSettingsProperty
  = VpcOutputSettingsProperty
      {publicAddressAllocationIds = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, subnetIds = Prelude.Nothing}
instance ToResourceProperties VpcOutputSettingsProperty where
  toResourceProperties VpcOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.VpcOutputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PublicAddressAllocationIds"
                              Prelude.<$> publicAddressAllocationIds,
                            (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds])}
instance JSON.ToJSON VpcOutputSettingsProperty where
  toJSON VpcOutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PublicAddressAllocationIds"
                 Prelude.<$> publicAddressAllocationIds,
               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds]))
instance Property "PublicAddressAllocationIds" VpcOutputSettingsProperty where
  type PropertyType "PublicAddressAllocationIds" VpcOutputSettingsProperty = ValueList Prelude.Text
  set newValue VpcOutputSettingsProperty {..}
    = VpcOutputSettingsProperty
        {publicAddressAllocationIds = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" VpcOutputSettingsProperty where
  type PropertyType "SecurityGroupIds" VpcOutputSettingsProperty = ValueList Prelude.Text
  set newValue VpcOutputSettingsProperty {..}
    = VpcOutputSettingsProperty
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" VpcOutputSettingsProperty where
  type PropertyType "SubnetIds" VpcOutputSettingsProperty = ValueList Prelude.Text
  set newValue VpcOutputSettingsProperty {..}
    = VpcOutputSettingsProperty {subnetIds = Prelude.pure newValue, ..}