module Stratosphere.IoTCoreDeviceAdvisor.SuiteDefinition.DeviceUnderTestProperty (
        DeviceUnderTestProperty(..), mkDeviceUnderTestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceUnderTestProperty
  = DeviceUnderTestProperty {certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                             thingArn :: (Prelude.Maybe (Value Prelude.Text))}
mkDeviceUnderTestProperty :: DeviceUnderTestProperty
mkDeviceUnderTestProperty
  = DeviceUnderTestProperty
      {certificateArn = Prelude.Nothing, thingArn = Prelude.Nothing}
instance ToResourceProperties DeviceUnderTestProperty where
  toResourceProperties DeviceUnderTestProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTCoreDeviceAdvisor::SuiteDefinition.DeviceUnderTest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                            (JSON..=) "ThingArn" Prelude.<$> thingArn])}
instance JSON.ToJSON DeviceUnderTestProperty where
  toJSON DeviceUnderTestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
               (JSON..=) "ThingArn" Prelude.<$> thingArn]))
instance Property "CertificateArn" DeviceUnderTestProperty where
  type PropertyType "CertificateArn" DeviceUnderTestProperty = Value Prelude.Text
  set newValue DeviceUnderTestProperty {..}
    = DeviceUnderTestProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "ThingArn" DeviceUnderTestProperty where
  type PropertyType "ThingArn" DeviceUnderTestProperty = Value Prelude.Text
  set newValue DeviceUnderTestProperty {..}
    = DeviceUnderTestProperty {thingArn = Prelude.pure newValue, ..}