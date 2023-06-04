module Stratosphere.IoTWireless.WirelessDeviceImportTask.SidewalkProperty (
        SidewalkProperty(..), mkSidewalkProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SidewalkProperty
  = SidewalkProperty {deviceCreationFile :: (Prelude.Maybe (Value Prelude.Text)),
                      deviceCreationFileList :: (Prelude.Maybe (ValueList Prelude.Text)),
                      role :: (Prelude.Maybe (Value Prelude.Text)),
                      sidewalkManufacturingSn :: (Prelude.Maybe (Value Prelude.Text))}
mkSidewalkProperty :: SidewalkProperty
mkSidewalkProperty
  = SidewalkProperty
      {deviceCreationFile = Prelude.Nothing,
       deviceCreationFileList = Prelude.Nothing, role = Prelude.Nothing,
       sidewalkManufacturingSn = Prelude.Nothing}
instance ToResourceProperties SidewalkProperty where
  toResourceProperties SidewalkProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessDeviceImportTask.Sidewalk",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeviceCreationFile" Prelude.<$> deviceCreationFile,
                            (JSON..=) "DeviceCreationFileList"
                              Prelude.<$> deviceCreationFileList,
                            (JSON..=) "Role" Prelude.<$> role,
                            (JSON..=) "SidewalkManufacturingSn"
                              Prelude.<$> sidewalkManufacturingSn])}
instance JSON.ToJSON SidewalkProperty where
  toJSON SidewalkProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeviceCreationFile" Prelude.<$> deviceCreationFile,
               (JSON..=) "DeviceCreationFileList"
                 Prelude.<$> deviceCreationFileList,
               (JSON..=) "Role" Prelude.<$> role,
               (JSON..=) "SidewalkManufacturingSn"
                 Prelude.<$> sidewalkManufacturingSn]))
instance Property "DeviceCreationFile" SidewalkProperty where
  type PropertyType "DeviceCreationFile" SidewalkProperty = Value Prelude.Text
  set newValue SidewalkProperty {..}
    = SidewalkProperty {deviceCreationFile = Prelude.pure newValue, ..}
instance Property "DeviceCreationFileList" SidewalkProperty where
  type PropertyType "DeviceCreationFileList" SidewalkProperty = ValueList Prelude.Text
  set newValue SidewalkProperty {..}
    = SidewalkProperty
        {deviceCreationFileList = Prelude.pure newValue, ..}
instance Property "Role" SidewalkProperty where
  type PropertyType "Role" SidewalkProperty = Value Prelude.Text
  set newValue SidewalkProperty {..}
    = SidewalkProperty {role = Prelude.pure newValue, ..}
instance Property "SidewalkManufacturingSn" SidewalkProperty where
  type PropertyType "SidewalkManufacturingSn" SidewalkProperty = Value Prelude.Text
  set newValue SidewalkProperty {..}
    = SidewalkProperty
        {sidewalkManufacturingSn = Prelude.pure newValue, ..}