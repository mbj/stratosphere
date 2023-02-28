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
  = EcsTaskOverrideProperty {containerOverrides :: (Prelude.Maybe [EcsContainerOverrideProperty]),
                             cpu :: (Prelude.Maybe (Value Prelude.Text)),
                             ephemeralStorage :: (Prelude.Maybe EcsEphemeralStorageProperty),
                             executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                             inferenceAcceleratorOverrides :: (Prelude.Maybe [EcsInferenceAcceleratorOverrideProperty]),
                             memory :: (Prelude.Maybe (Value Prelude.Text)),
                             taskRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
mkEcsTaskOverrideProperty :: EcsTaskOverrideProperty
mkEcsTaskOverrideProperty
  = EcsTaskOverrideProperty
      {containerOverrides = Prelude.Nothing, cpu = Prelude.Nothing,
       ephemeralStorage = Prelude.Nothing,
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