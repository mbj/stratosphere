module Stratosphere.EC2.SpotFleet.BlockDeviceMappingProperty (
        module Exports, BlockDeviceMappingProperty(..),
        mkBlockDeviceMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.EbsBlockDeviceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlockDeviceMappingProperty
  = BlockDeviceMappingProperty {deviceName :: (Value Prelude.Text),
                                ebs :: (Prelude.Maybe EbsBlockDeviceProperty),
                                noDevice :: (Prelude.Maybe (Value Prelude.Text)),
                                virtualName :: (Prelude.Maybe (Value Prelude.Text))}
mkBlockDeviceMappingProperty ::
  Value Prelude.Text -> BlockDeviceMappingProperty
mkBlockDeviceMappingProperty deviceName
  = BlockDeviceMappingProperty
      {deviceName = deviceName, ebs = Prelude.Nothing,
       noDevice = Prelude.Nothing, virtualName = Prelude.Nothing}
instance ToResourceProperties BlockDeviceMappingProperty where
  toResourceProperties BlockDeviceMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.BlockDeviceMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeviceName" JSON..= deviceName]
                           (Prelude.catMaybes
                              [(JSON..=) "Ebs" Prelude.<$> ebs,
                               (JSON..=) "NoDevice" Prelude.<$> noDevice,
                               (JSON..=) "VirtualName" Prelude.<$> virtualName]))}
instance JSON.ToJSON BlockDeviceMappingProperty where
  toJSON BlockDeviceMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeviceName" JSON..= deviceName]
              (Prelude.catMaybes
                 [(JSON..=) "Ebs" Prelude.<$> ebs,
                  (JSON..=) "NoDevice" Prelude.<$> noDevice,
                  (JSON..=) "VirtualName" Prelude.<$> virtualName])))
instance Property "DeviceName" BlockDeviceMappingProperty where
  type PropertyType "DeviceName" BlockDeviceMappingProperty = Value Prelude.Text
  set newValue BlockDeviceMappingProperty {..}
    = BlockDeviceMappingProperty {deviceName = newValue, ..}
instance Property "Ebs" BlockDeviceMappingProperty where
  type PropertyType "Ebs" BlockDeviceMappingProperty = EbsBlockDeviceProperty
  set newValue BlockDeviceMappingProperty {..}
    = BlockDeviceMappingProperty {ebs = Prelude.pure newValue, ..}
instance Property "NoDevice" BlockDeviceMappingProperty where
  type PropertyType "NoDevice" BlockDeviceMappingProperty = Value Prelude.Text
  set newValue BlockDeviceMappingProperty {..}
    = BlockDeviceMappingProperty {noDevice = Prelude.pure newValue, ..}
instance Property "VirtualName" BlockDeviceMappingProperty where
  type PropertyType "VirtualName" BlockDeviceMappingProperty = Value Prelude.Text
  set newValue BlockDeviceMappingProperty {..}
    = BlockDeviceMappingProperty
        {virtualName = Prelude.pure newValue, ..}