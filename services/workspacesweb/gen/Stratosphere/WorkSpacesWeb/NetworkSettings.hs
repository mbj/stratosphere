module Stratosphere.WorkSpacesWeb.NetworkSettings (
        NetworkSettings(..), mkNetworkSettings
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data NetworkSettings
  = NetworkSettings {securityGroupIds :: (ValueList Prelude.Text),
                     subnetIds :: (ValueList Prelude.Text),
                     tags :: (Prelude.Maybe [Tag]),
                     vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkSettings ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> Value Prelude.Text -> NetworkSettings
mkNetworkSettings securityGroupIds subnetIds vpcId
  = NetworkSettings
      {securityGroupIds = securityGroupIds, subnetIds = subnetIds,
       vpcId = vpcId, tags = Prelude.Nothing}
instance ToResourceProperties NetworkSettings where
  toResourceProperties NetworkSettings {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::NetworkSettings",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecurityGroupIds" JSON..= securityGroupIds,
                            "SubnetIds" JSON..= subnetIds, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON NetworkSettings where
  toJSON NetworkSettings {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecurityGroupIds" JSON..= securityGroupIds,
               "SubnetIds" JSON..= subnetIds, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "SecurityGroupIds" NetworkSettings where
  type PropertyType "SecurityGroupIds" NetworkSettings = ValueList Prelude.Text
  set newValue NetworkSettings {..}
    = NetworkSettings {securityGroupIds = newValue, ..}
instance Property "SubnetIds" NetworkSettings where
  type PropertyType "SubnetIds" NetworkSettings = ValueList Prelude.Text
  set newValue NetworkSettings {..}
    = NetworkSettings {subnetIds = newValue, ..}
instance Property "Tags" NetworkSettings where
  type PropertyType "Tags" NetworkSettings = [Tag]
  set newValue NetworkSettings {..}
    = NetworkSettings {tags = Prelude.pure newValue, ..}
instance Property "VpcId" NetworkSettings where
  type PropertyType "VpcId" NetworkSettings = Value Prelude.Text
  set newValue NetworkSettings {..}
    = NetworkSettings {vpcId = newValue, ..}