module Stratosphere.AutoScaling.LaunchConfiguration.BlockDeviceMappingProperty (
        module Exports, BlockDeviceMappingProperty(..),
        mkBlockDeviceMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.LaunchConfiguration.BlockDeviceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlockDeviceMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-blockdevicemapping.html>
    BlockDeviceMappingProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-blockdevicemapping.html#cfn-autoscaling-launchconfiguration-blockdevicemapping-devicename>
                                deviceName :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-blockdevicemapping.html#cfn-autoscaling-launchconfiguration-blockdevicemapping-ebs>
                                ebs :: (Prelude.Maybe BlockDeviceProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-blockdevicemapping.html#cfn-autoscaling-launchconfiguration-blockdevicemapping-nodevice>
                                noDevice :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-blockdevicemapping.html#cfn-autoscaling-launchconfiguration-blockdevicemapping-virtualname>
                                virtualName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBlockDeviceMappingProperty ::
  Value Prelude.Text -> BlockDeviceMappingProperty
mkBlockDeviceMappingProperty deviceName
  = BlockDeviceMappingProperty
      {haddock_workaround_ = (), deviceName = deviceName,
       ebs = Prelude.Nothing, noDevice = Prelude.Nothing,
       virtualName = Prelude.Nothing}
instance ToResourceProperties BlockDeviceMappingProperty where
  toResourceProperties BlockDeviceMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::LaunchConfiguration.BlockDeviceMapping",
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
  type PropertyType "Ebs" BlockDeviceMappingProperty = BlockDeviceProperty
  set newValue BlockDeviceMappingProperty {..}
    = BlockDeviceMappingProperty {ebs = Prelude.pure newValue, ..}
instance Property "NoDevice" BlockDeviceMappingProperty where
  type PropertyType "NoDevice" BlockDeviceMappingProperty = Value Prelude.Bool
  set newValue BlockDeviceMappingProperty {..}
    = BlockDeviceMappingProperty {noDevice = Prelude.pure newValue, ..}
instance Property "VirtualName" BlockDeviceMappingProperty where
  type PropertyType "VirtualName" BlockDeviceMappingProperty = Value Prelude.Text
  set newValue BlockDeviceMappingProperty {..}
    = BlockDeviceMappingProperty
        {virtualName = Prelude.pure newValue, ..}