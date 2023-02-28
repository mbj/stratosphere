module Stratosphere.Greengrass.DeviceDefinition.DeviceDefinitionVersionProperty (
        module Exports, DeviceDefinitionVersionProperty(..),
        mkDeviceDefinitionVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.DeviceDefinition.DeviceProperty as Exports
import Stratosphere.ResourceProperties
data DeviceDefinitionVersionProperty
  = DeviceDefinitionVersionProperty {devices :: [DeviceProperty]}
mkDeviceDefinitionVersionProperty ::
  [DeviceProperty] -> DeviceDefinitionVersionProperty
mkDeviceDefinitionVersionProperty devices
  = DeviceDefinitionVersionProperty {devices = devices}
instance ToResourceProperties DeviceDefinitionVersionProperty where
  toResourceProperties DeviceDefinitionVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::DeviceDefinition.DeviceDefinitionVersion",
         supportsTags = Prelude.False,
         properties = ["Devices" JSON..= devices]}
instance JSON.ToJSON DeviceDefinitionVersionProperty where
  toJSON DeviceDefinitionVersionProperty {..}
    = JSON.object ["Devices" JSON..= devices]
instance Property "Devices" DeviceDefinitionVersionProperty where
  type PropertyType "Devices" DeviceDefinitionVersionProperty = [DeviceProperty]
  set newValue DeviceDefinitionVersionProperty {}
    = DeviceDefinitionVersionProperty {devices = newValue, ..}