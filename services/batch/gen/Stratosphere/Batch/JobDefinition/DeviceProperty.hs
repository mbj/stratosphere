module Stratosphere.Batch.JobDefinition.DeviceProperty (
        DeviceProperty(..), mkDeviceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-device.html>
    DeviceProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-device.html#cfn-batch-jobdefinition-device-containerpath>
                    containerPath :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-device.html#cfn-batch-jobdefinition-device-hostpath>
                    hostPath :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-device.html#cfn-batch-jobdefinition-device-permissions>
                    permissions :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeviceProperty :: DeviceProperty
mkDeviceProperty
  = DeviceProperty
      {haddock_workaround_ = (), containerPath = Prelude.Nothing,
       hostPath = Prelude.Nothing, permissions = Prelude.Nothing}
instance ToResourceProperties DeviceProperty where
  toResourceProperties DeviceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.Device",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerPath" Prelude.<$> containerPath,
                            (JSON..=) "HostPath" Prelude.<$> hostPath,
                            (JSON..=) "Permissions" Prelude.<$> permissions])}
instance JSON.ToJSON DeviceProperty where
  toJSON DeviceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerPath" Prelude.<$> containerPath,
               (JSON..=) "HostPath" Prelude.<$> hostPath,
               (JSON..=) "Permissions" Prelude.<$> permissions]))
instance Property "ContainerPath" DeviceProperty where
  type PropertyType "ContainerPath" DeviceProperty = Value Prelude.Text
  set newValue DeviceProperty {..}
    = DeviceProperty {containerPath = Prelude.pure newValue, ..}
instance Property "HostPath" DeviceProperty where
  type PropertyType "HostPath" DeviceProperty = Value Prelude.Text
  set newValue DeviceProperty {..}
    = DeviceProperty {hostPath = Prelude.pure newValue, ..}
instance Property "Permissions" DeviceProperty where
  type PropertyType "Permissions" DeviceProperty = ValueList Prelude.Text
  set newValue DeviceProperty {..}
    = DeviceProperty {permissions = Prelude.pure newValue, ..}