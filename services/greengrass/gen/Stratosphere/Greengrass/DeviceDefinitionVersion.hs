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
  = DeviceDefinitionVersion {deviceDefinitionId :: (Value Prelude.Text),
                             devices :: [DeviceProperty]}
mkDeviceDefinitionVersion ::
  Value Prelude.Text -> [DeviceProperty] -> DeviceDefinitionVersion
mkDeviceDefinitionVersion deviceDefinitionId devices
  = DeviceDefinitionVersion
      {deviceDefinitionId = deviceDefinitionId, devices = devices}
instance ToResourceProperties DeviceDefinitionVersion where
  toResourceProperties DeviceDefinitionVersion {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::DeviceDefinitionVersion",
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