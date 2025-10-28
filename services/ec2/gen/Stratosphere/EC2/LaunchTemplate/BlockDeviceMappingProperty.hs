module Stratosphere.EC2.LaunchTemplate.BlockDeviceMappingProperty (
        module Exports, BlockDeviceMappingProperty(..),
        mkBlockDeviceMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.EbsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlockDeviceMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html>
    BlockDeviceMappingProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-devicename>
                                deviceName :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs>
                                ebs :: (Prelude.Maybe EbsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-nodevice>
                                noDevice :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-virtualname>
                                virtualName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBlockDeviceMappingProperty :: BlockDeviceMappingProperty
mkBlockDeviceMappingProperty
  = BlockDeviceMappingProperty
      {haddock_workaround_ = (), deviceName = Prelude.Nothing,
       ebs = Prelude.Nothing, noDevice = Prelude.Nothing,
       virtualName = Prelude.Nothing}
instance ToResourceProperties BlockDeviceMappingProperty where
  toResourceProperties BlockDeviceMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.BlockDeviceMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeviceName" Prelude.<$> deviceName,
                            (JSON..=) "Ebs" Prelude.<$> ebs,
                            (JSON..=) "NoDevice" Prelude.<$> noDevice,
                            (JSON..=) "VirtualName" Prelude.<$> virtualName])}
instance JSON.ToJSON BlockDeviceMappingProperty where
  toJSON BlockDeviceMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeviceName" Prelude.<$> deviceName,
               (JSON..=) "Ebs" Prelude.<$> ebs,
               (JSON..=) "NoDevice" Prelude.<$> noDevice,
               (JSON..=) "VirtualName" Prelude.<$> virtualName]))
instance Property "DeviceName" BlockDeviceMappingProperty where
  type PropertyType "DeviceName" BlockDeviceMappingProperty = Value Prelude.Text
  set newValue BlockDeviceMappingProperty {..}
    = BlockDeviceMappingProperty
        {deviceName = Prelude.pure newValue, ..}
instance Property "Ebs" BlockDeviceMappingProperty where
  type PropertyType "Ebs" BlockDeviceMappingProperty = EbsProperty
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