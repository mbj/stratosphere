module Stratosphere.Greengrass.DeviceDefinition.DeviceProperty (
        DeviceProperty(..), mkDeviceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html>
    DeviceProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-certificatearn>
                    certificateArn :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-id>
                    id :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-syncshadow>
                    syncShadow :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-devicedefinition-device.html#cfn-greengrass-devicedefinition-device-thingarn>
                    thingArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeviceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> DeviceProperty
mkDeviceProperty certificateArn id thingArn
  = DeviceProperty
      {haddock_workaround_ = (), certificateArn = certificateArn,
       id = id, thingArn = thingArn, syncShadow = Prelude.Nothing}
instance ToResourceProperties DeviceProperty where
  toResourceProperties DeviceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::DeviceDefinition.Device",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CertificateArn" JSON..= certificateArn, "Id" JSON..= id,
                            "ThingArn" JSON..= thingArn]
                           (Prelude.catMaybes
                              [(JSON..=) "SyncShadow" Prelude.<$> syncShadow]))}
instance JSON.ToJSON DeviceProperty where
  toJSON DeviceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CertificateArn" JSON..= certificateArn, "Id" JSON..= id,
               "ThingArn" JSON..= thingArn]
              (Prelude.catMaybes
                 [(JSON..=) "SyncShadow" Prelude.<$> syncShadow])))
instance Property "CertificateArn" DeviceProperty where
  type PropertyType "CertificateArn" DeviceProperty = Value Prelude.Text
  set newValue DeviceProperty {..}
    = DeviceProperty {certificateArn = newValue, ..}
instance Property "Id" DeviceProperty where
  type PropertyType "Id" DeviceProperty = Value Prelude.Text
  set newValue DeviceProperty {..}
    = DeviceProperty {id = newValue, ..}
instance Property "SyncShadow" DeviceProperty where
  type PropertyType "SyncShadow" DeviceProperty = Value Prelude.Bool
  set newValue DeviceProperty {..}
    = DeviceProperty {syncShadow = Prelude.pure newValue, ..}
instance Property "ThingArn" DeviceProperty where
  type PropertyType "ThingArn" DeviceProperty = Value Prelude.Text
  set newValue DeviceProperty {..}
    = DeviceProperty {thingArn = newValue, ..}