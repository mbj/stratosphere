module Stratosphere.IoTWireless.WirelessDeviceImportTask (
        module Exports, WirelessDeviceImportTask(..),
        mkWirelessDeviceImportTask
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.WirelessDeviceImportTask.SidewalkProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data WirelessDeviceImportTask
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdeviceimporttask.html>
    WirelessDeviceImportTask {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdeviceimporttask.html#cfn-iotwireless-wirelessdeviceimporttask-destinationname>
                              destinationName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdeviceimporttask.html#cfn-iotwireless-wirelessdeviceimporttask-sidewalk>
                              sidewalk :: SidewalkProperty,
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdeviceimporttask.html#cfn-iotwireless-wirelessdeviceimporttask-tags>
                              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWirelessDeviceImportTask ::
  Value Prelude.Text -> SidewalkProperty -> WirelessDeviceImportTask
mkWirelessDeviceImportTask destinationName sidewalk
  = WirelessDeviceImportTask
      {haddock_workaround_ = (), destinationName = destinationName,
       sidewalk = sidewalk, tags = Prelude.Nothing}
instance ToResourceProperties WirelessDeviceImportTask where
  toResourceProperties WirelessDeviceImportTask {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessDeviceImportTask",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationName" JSON..= destinationName,
                            "Sidewalk" JSON..= sidewalk]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON WirelessDeviceImportTask where
  toJSON WirelessDeviceImportTask {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationName" JSON..= destinationName,
               "Sidewalk" JSON..= sidewalk]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DestinationName" WirelessDeviceImportTask where
  type PropertyType "DestinationName" WirelessDeviceImportTask = Value Prelude.Text
  set newValue WirelessDeviceImportTask {..}
    = WirelessDeviceImportTask {destinationName = newValue, ..}
instance Property "Sidewalk" WirelessDeviceImportTask where
  type PropertyType "Sidewalk" WirelessDeviceImportTask = SidewalkProperty
  set newValue WirelessDeviceImportTask {..}
    = WirelessDeviceImportTask {sidewalk = newValue, ..}
instance Property "Tags" WirelessDeviceImportTask where
  type PropertyType "Tags" WirelessDeviceImportTask = [Tag]
  set newValue WirelessDeviceImportTask {..}
    = WirelessDeviceImportTask {tags = Prelude.pure newValue, ..}