module Stratosphere.Pipes.Pipe.EcsInferenceAcceleratorOverrideProperty (
        EcsInferenceAcceleratorOverrideProperty(..),
        mkEcsInferenceAcceleratorOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsInferenceAcceleratorOverrideProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecsinferenceacceleratoroverride.html>
    EcsInferenceAcceleratorOverrideProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecsinferenceacceleratoroverride.html#cfn-pipes-pipe-ecsinferenceacceleratoroverride-devicename>
                                             deviceName :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecsinferenceacceleratoroverride.html#cfn-pipes-pipe-ecsinferenceacceleratoroverride-devicetype>
                                             deviceType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcsInferenceAcceleratorOverrideProperty ::
  EcsInferenceAcceleratorOverrideProperty
mkEcsInferenceAcceleratorOverrideProperty
  = EcsInferenceAcceleratorOverrideProperty
      {haddock_workaround_ = (), deviceName = Prelude.Nothing,
       deviceType = Prelude.Nothing}
instance ToResourceProperties EcsInferenceAcceleratorOverrideProperty where
  toResourceProperties EcsInferenceAcceleratorOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.EcsInferenceAcceleratorOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeviceName" Prelude.<$> deviceName,
                            (JSON..=) "DeviceType" Prelude.<$> deviceType])}
instance JSON.ToJSON EcsInferenceAcceleratorOverrideProperty where
  toJSON EcsInferenceAcceleratorOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeviceName" Prelude.<$> deviceName,
               (JSON..=) "DeviceType" Prelude.<$> deviceType]))
instance Property "DeviceName" EcsInferenceAcceleratorOverrideProperty where
  type PropertyType "DeviceName" EcsInferenceAcceleratorOverrideProperty = Value Prelude.Text
  set newValue EcsInferenceAcceleratorOverrideProperty {..}
    = EcsInferenceAcceleratorOverrideProperty
        {deviceName = Prelude.pure newValue, ..}
instance Property "DeviceType" EcsInferenceAcceleratorOverrideProperty where
  type PropertyType "DeviceType" EcsInferenceAcceleratorOverrideProperty = Value Prelude.Text
  set newValue EcsInferenceAcceleratorOverrideProperty {..}
    = EcsInferenceAcceleratorOverrideProperty
        {deviceType = Prelude.pure newValue, ..}