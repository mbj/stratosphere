module Stratosphere.ImageBuilder.ImageRecipe.InstanceBlockDeviceMappingProperty (
        module Exports, InstanceBlockDeviceMappingProperty(..),
        mkInstanceBlockDeviceMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.ImageRecipe.EbsInstanceBlockDeviceSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceBlockDeviceMappingProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-instanceblockdevicemapping.html>
    InstanceBlockDeviceMappingProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-instanceblockdevicemapping.html#cfn-imagebuilder-imagerecipe-instanceblockdevicemapping-devicename>
                                        deviceName :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-instanceblockdevicemapping.html#cfn-imagebuilder-imagerecipe-instanceblockdevicemapping-ebs>
                                        ebs :: (Prelude.Maybe EbsInstanceBlockDeviceSpecificationProperty),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-instanceblockdevicemapping.html#cfn-imagebuilder-imagerecipe-instanceblockdevicemapping-nodevice>
                                        noDevice :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-imagerecipe-instanceblockdevicemapping.html#cfn-imagebuilder-imagerecipe-instanceblockdevicemapping-virtualname>
                                        virtualName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceBlockDeviceMappingProperty ::
  InstanceBlockDeviceMappingProperty
mkInstanceBlockDeviceMappingProperty
  = InstanceBlockDeviceMappingProperty
      {deviceName = Prelude.Nothing, ebs = Prelude.Nothing,
       noDevice = Prelude.Nothing, virtualName = Prelude.Nothing}
instance ToResourceProperties InstanceBlockDeviceMappingProperty where
  toResourceProperties InstanceBlockDeviceMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ImageRecipe.InstanceBlockDeviceMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeviceName" Prelude.<$> deviceName,
                            (JSON..=) "Ebs" Prelude.<$> ebs,
                            (JSON..=) "NoDevice" Prelude.<$> noDevice,
                            (JSON..=) "VirtualName" Prelude.<$> virtualName])}
instance JSON.ToJSON InstanceBlockDeviceMappingProperty where
  toJSON InstanceBlockDeviceMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeviceName" Prelude.<$> deviceName,
               (JSON..=) "Ebs" Prelude.<$> ebs,
               (JSON..=) "NoDevice" Prelude.<$> noDevice,
               (JSON..=) "VirtualName" Prelude.<$> virtualName]))
instance Property "DeviceName" InstanceBlockDeviceMappingProperty where
  type PropertyType "DeviceName" InstanceBlockDeviceMappingProperty = Value Prelude.Text
  set newValue InstanceBlockDeviceMappingProperty {..}
    = InstanceBlockDeviceMappingProperty
        {deviceName = Prelude.pure newValue, ..}
instance Property "Ebs" InstanceBlockDeviceMappingProperty where
  type PropertyType "Ebs" InstanceBlockDeviceMappingProperty = EbsInstanceBlockDeviceSpecificationProperty
  set newValue InstanceBlockDeviceMappingProperty {..}
    = InstanceBlockDeviceMappingProperty
        {ebs = Prelude.pure newValue, ..}
instance Property "NoDevice" InstanceBlockDeviceMappingProperty where
  type PropertyType "NoDevice" InstanceBlockDeviceMappingProperty = Value Prelude.Text
  set newValue InstanceBlockDeviceMappingProperty {..}
    = InstanceBlockDeviceMappingProperty
        {noDevice = Prelude.pure newValue, ..}
instance Property "VirtualName" InstanceBlockDeviceMappingProperty where
  type PropertyType "VirtualName" InstanceBlockDeviceMappingProperty = Value Prelude.Text
  set newValue InstanceBlockDeviceMappingProperty {..}
    = InstanceBlockDeviceMappingProperty
        {virtualName = Prelude.pure newValue, ..}