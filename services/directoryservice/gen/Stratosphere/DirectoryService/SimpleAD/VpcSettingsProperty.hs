module Stratosphere.DirectoryService.SimpleAD.VpcSettingsProperty (
        VpcSettingsProperty(..), mkVpcSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html>
    VpcSettingsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html#cfn-directoryservice-simplead-vpcsettings-subnetids>
                         subnetIds :: (ValueList Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-directoryservice-simplead-vpcsettings.html#cfn-directoryservice-simplead-vpcsettings-vpcid>
                         vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcSettingsProperty ::
  ValueList Prelude.Text -> Value Prelude.Text -> VpcSettingsProperty
mkVpcSettingsProperty subnetIds vpcId
  = VpcSettingsProperty
      {haddock_workaround_ = (), subnetIds = subnetIds, vpcId = vpcId}
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