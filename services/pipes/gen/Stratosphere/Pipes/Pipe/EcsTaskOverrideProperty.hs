module Stratosphere.Pipes.Pipe.EcsTaskOverrideProperty (
        module Exports, EcsTaskOverrideProperty(..),
        mkEcsTaskOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.EcsContainerOverrideProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.EcsEphemeralStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.EcsInferenceAcceleratorOverrideProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsTaskOverrideProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecstaskoverride.html>
    EcsTaskOverrideProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecstaskoverride.html#cfn-pipes-pipe-ecstaskoverride-containeroverrides>
                             containerOverrides :: (Prelude.Maybe [EcsContainerOverrideProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecstaskoverride.html#cfn-pipes-pipe-ecstaskoverride-cpu>
                             cpu :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecstaskoverride.html#cfn-pipes-pipe-ecstaskoverride-ephemeralstorage>
                             ephemeralStorage :: (Prelude.Maybe EcsEphemeralStorageProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecstaskoverride.html#cfn-pipes-pipe-ecstaskoverride-executionrolearn>
                             executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecstaskoverride.html#cfn-pipes-pipe-ecstaskoverride-inferenceacceleratoroverrides>
                             inferenceAcceleratorOverrides :: (Prelude.Maybe [EcsInferenceAcceleratorOverrideProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecstaskoverride.html#cfn-pipes-pipe-ecstaskoverride-memory>
                             memory :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecstaskoverride.html#cfn-pipes-pipe-ecstaskoverride-taskrolearn>
                             taskRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcsTaskOverrideProperty :: EcsTaskOverrideProperty
mkEcsTaskOverrideProperty
  = EcsTaskOverrideProperty
      {haddock_workaround_ = (), containerOverrides = Prelude.Nothing,
       cpu = Prelude.Nothing, ephemeralStorage = Prelude.Nothing,
       executionRoleArn = Prelude.Nothing,
       inferenceAcceleratorOverrides = Prelude.Nothing,
       memory = Prelude.Nothing, taskRoleArn = Prelude.Nothing}
instance ToResourceProperties EcsTaskOverrideProperty where
  toResourceProperties EcsTaskOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.EcsTaskOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerOverrides" Prelude.<$> containerOverrides,
                            (JSON..=) "Cpu" Prelude.<$> cpu,
                            (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
                            (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                            (JSON..=) "InferenceAcceleratorOverrides"
                              Prelude.<$> inferenceAcceleratorOverrides,
                            (JSON..=) "Memory" Prelude.<$> memory,
                            (JSON..=) "TaskRoleArn" Prelude.<$> taskRoleArn])}
instance JSON.ToJSON EcsTaskOverrideProperty where
  toJSON EcsTaskOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerOverrides" Prelude.<$> containerOverrides,
               (JSON..=) "Cpu" Prelude.<$> cpu,
               (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
               (JSON..=) "InferenceAcceleratorOverrides"
                 Prelude.<$> inferenceAcceleratorOverrides,
               (JSON..=) "Memory" Prelude.<$> memory,
               (JSON..=) "TaskRoleArn" Prelude.<$> taskRoleArn]))
instance Property "ContainerOverrides" EcsTaskOverrideProperty where
  type PropertyType "ContainerOverrides" EcsTaskOverrideProperty = [EcsContainerOverrideProperty]
  set newValue EcsTaskOverrideProperty {..}
    = EcsTaskOverrideProperty
        {containerOverrides = Prelude.pure newValue, ..}
instance Property "Cpu" EcsTaskOverrideProperty where
  type PropertyType "Cpu" EcsTaskOverrideProperty = Value Prelude.Text
  set newValue EcsTaskOverrideProperty {..}
    = EcsTaskOverrideProperty {cpu = Prelude.pure newValue, ..}
instance Property "EphemeralStorage" EcsTaskOverrideProperty where
  type PropertyType "EphemeralStorage" EcsTaskOverrideProperty = EcsEphemeralStorageProperty
  set newValue EcsTaskOverrideProperty {..}
    = EcsTaskOverrideProperty
        {ephemeralStorage = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" EcsTaskOverrideProperty where
  type PropertyType "ExecutionRoleArn" EcsTaskOverrideProperty = Value Prelude.Text
  set newValue EcsTaskOverrideProperty {..}
    = EcsTaskOverrideProperty
        {executionRoleArn = Prelude.pure newValue, ..}
instance Property "InferenceAcceleratorOverrides" EcsTaskOverrideProperty where
  type PropertyType "InferenceAcceleratorOverrides" EcsTaskOverrideProperty = [EcsInferenceAcceleratorOverrideProperty]
  set newValue EcsTaskOverrideProperty {..}
    = EcsTaskOverrideProperty
        {inferenceAcceleratorOverrides = Prelude.pure newValue, ..}
instance Property "Memory" EcsTaskOverrideProperty where
  type PropertyType "Memory" EcsTaskOverrideProperty = Value Prelude.Text
  set newValue EcsTaskOverrideProperty {..}
    = EcsTaskOverrideProperty {memory = Prelude.pure newValue, ..}
instance Property "TaskRoleArn" EcsTaskOverrideProperty where
  type PropertyType "TaskRoleArn" EcsTaskOverrideProperty = Value Prelude.Text
  set newValue EcsTaskOverrideProperty {..}
    = EcsTaskOverrideProperty {taskRoleArn = Prelude.pure newValue, ..}