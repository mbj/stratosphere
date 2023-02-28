module Stratosphere.DirectoryService.SimpleAD.VpcSettingsProperty (
        VpcSettingsProperty(..), mkVpcSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcSettingsProperty
  = VpcSettingsProperty {subnetIds :: (ValueList Prelude.Text),
                         vpcId :: (Value Prelude.Text)}
mkVpcSettingsProperty ::
  ValueList Prelude.Text -> Value Prelude.Text -> VpcSettingsProperty
mkVpcSettingsProperty subnetIds vpcId
  = VpcSettingsProperty {subnetIds = subnetIds, vpcId = vpcId}
instance ToResourceProperties VpcSettingsProperty where
  toResourceProperties VpcSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DirectoryService::SimpleAD.VpcSettings",
         supportsTags = Prelude.False,
         properties = ["SubnetIds" JSON..= subnetIds,
                       "VpcId" JSON..= vpcId]}
instance JSON.ToJSON VpcSettingsProperty where
  toJSON VpcSettingsProperty {..}
    = JSON.object
        ["SubnetIds" JSON..= subnetIds, "VpcId" JSON..= vpcId]
instance Property "SubnetIds" VpcSettingsProperty where
  type PropertyType "SubnetIds" VpcSettingsProperty = ValueList Prelude.Text
  set newValue VpcSettingsProperty {..}
    = VpcSettingsProperty {subnetIds = newValue, ..}
instance Property "VpcId" VpcSettingsProperty where
  type PropertyType "VpcId" VpcSettingsProperty = Value Prelude.Text
  set newValue VpcSettingsProperty {..}
    = VpcSettingsProperty {vpcId = newValue, ..}