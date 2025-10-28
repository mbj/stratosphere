module Stratosphere.Greengrass.DeviceDefinitionVersion (
        module Exports, DeviceDefinitionVersion(..),
        mkDeviceDefinitionVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.DeviceDefinitionVersion.DeviceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceDefinitionVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinitionversion.html>
    DeviceDefinitionVersion {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinitionversion.html#cfn-greengrass-devicedefinitionversion-devicedefinitionid>
                             deviceDefinitionId :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinitionversion.html#cfn-greengrass-devicedefinitionversion-devices>
                             devices :: [DeviceProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeviceDefinitionVersion ::
  Value Prelude.Text -> [DeviceProperty] -> DeviceDefinitionVersion
mkDeviceDefinitionVersion deviceDefinitionId devices
  = DeviceDefinitionVersion
      {haddock_workaround_ = (), deviceDefinitionId = deviceDefinitionId,
       devices = devices}
instance ToResourceProperties DeviceDefinitionVersion where
  toResourceProperties DeviceDefinitionVersion {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::DeviceDefinitionVersion",
         supportsTags = Prelude.False,
         properties = ["DeviceDefinitionId" JSON..= deviceDefinitionId,
                       "Devices" JSON..= devices]}
instance JSON.ToJSON DeviceDefinitionVersion where
  toJSON DeviceDefinitionVersion {..}
    = JSON.object
        ["DeviceDefinitionId" JSON..= deviceDefinitionId,
         "Devices" JSON..= devices]
instance Property "DeviceDefinitionId" DeviceDefinitionVersion where
  type PropertyType "DeviceDefinitionId" DeviceDefinitionVersion = Value Prelude.Text
  set newValue DeviceDefinitionVersion {..}
    = DeviceDefinitionVersion {deviceDefinitionId = newValue, ..}
instance Property "Devices" DeviceDefinitionVersion where
  type PropertyType "Devices" DeviceDefinitionVersion = [DeviceProperty]
  set newValue DeviceDefinitionVersion {..}
    = DeviceDefinitionVersion {devices = newValue, ..}