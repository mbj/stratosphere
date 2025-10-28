module Stratosphere.EC2.Instance.BlockDeviceMappingProperty (
        module Exports, BlockDeviceMappingProperty(..),
        mkBlockDeviceMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.Instance.EbsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlockDeviceMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-blockdevicemapping.html>
    BlockDeviceMappingProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-blockdevicemapping.html#cfn-ec2-instance-blockdevicemapping-devicename>
                                deviceName :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-blockdevicemapping.html#cfn-ec2-instance-blockdevicemapping-ebs>
                                ebs :: (Prelude.Maybe EbsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-blockdevicemapping.html#cfn-ec2-instance-blockdevicemapping-nodevice>
                                noDevice :: (Prelude.Maybe JSON.Object),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-blockdevicemapping.html#cfn-ec2-instance-blockdevicemapping-virtualname>
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
        {awsType = "AWS::EC2::Instance.BlockDeviceMapping",
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
  type PropertyType "Ebs" BlockDeviceMappingProperty = EbsProperty
  set newValue BlockDeviceMappingProperty {..}
    = BlockDeviceMappingProperty {ebs = Prelude.pure newValue, ..}
instance Property "NoDevice" BlockDeviceMappingProperty where
  type PropertyType "NoDevice" BlockDeviceMappingProperty = JSON.Object
  set newValue BlockDeviceMappingProperty {..}
    = BlockDeviceMappingProperty {noDevice = Prelude.pure newValue, ..}
instance Property "VirtualName" BlockDeviceMappingProperty where
  type PropertyType "VirtualName" BlockDeviceMappingProperty = Value Prelude.Text
  set newValue BlockDeviceMappingProperty {..}
    = BlockDeviceMappingProperty
        {virtualName = Prelude.pure newValue, ..}