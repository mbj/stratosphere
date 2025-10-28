module Stratosphere.Pipes.Pipe.EcsContainerOverrideProperty (
        module Exports, EcsContainerOverrideProperty(..),
        mkEcsContainerOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.EcsEnvironmentFileProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.EcsEnvironmentVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.EcsResourceRequirementProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsContainerOverrideProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecscontaineroverride.html>
    EcsContainerOverrideProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecscontaineroverride.html#cfn-pipes-pipe-ecscontaineroverride-command>
                                  command :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecscontaineroverride.html#cfn-pipes-pipe-ecscontaineroverride-cpu>
                                  cpu :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecscontaineroverride.html#cfn-pipes-pipe-ecscontaineroverride-environment>
                                  environment :: (Prelude.Maybe [EcsEnvironmentVariableProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecscontaineroverride.html#cfn-pipes-pipe-ecscontaineroverride-environmentfiles>
                                  environmentFiles :: (Prelude.Maybe [EcsEnvironmentFileProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecscontaineroverride.html#cfn-pipes-pipe-ecscontaineroverride-memory>
                                  memory :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecscontaineroverride.html#cfn-pipes-pipe-ecscontaineroverride-memoryreservation>
                                  memoryReservation :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecscontaineroverride.html#cfn-pipes-pipe-ecscontaineroverride-name>
                                  name :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-ecscontaineroverride.html#cfn-pipes-pipe-ecscontaineroverride-resourcerequirements>
                                  resourceRequirements :: (Prelude.Maybe [EcsResourceRequirementProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcsContainerOverrideProperty :: EcsContainerOverrideProperty
mkEcsContainerOverrideProperty
  = EcsContainerOverrideProperty
      {haddock_workaround_ = (), command = Prelude.Nothing,
       cpu = Prelude.Nothing, environment = Prelude.Nothing,
       environmentFiles = Prelude.Nothing, memory = Prelude.Nothing,
       memoryReservation = Prelude.Nothing, name = Prelude.Nothing,
       resourceRequirements = Prelude.Nothing}
instance ToResourceProperties EcsContainerOverrideProperty where
  toResourceProperties EcsContainerOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.EcsContainerOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Command" Prelude.<$> command,
                            (JSON..=) "Cpu" Prelude.<$> cpu,
                            (JSON..=) "Environment" Prelude.<$> environment,
                            (JSON..=) "EnvironmentFiles" Prelude.<$> environmentFiles,
                            (JSON..=) "Memory" Prelude.<$> memory,
                            (JSON..=) "MemoryReservation" Prelude.<$> memoryReservation,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ResourceRequirements"
                              Prelude.<$> resourceRequirements])}
instance JSON.ToJSON EcsContainerOverrideProperty where
  toJSON EcsContainerOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Command" Prelude.<$> command,
               (JSON..=) "Cpu" Prelude.<$> cpu,
               (JSON..=) "Environment" Prelude.<$> environment,
               (JSON..=) "EnvironmentFiles" Prelude.<$> environmentFiles,
               (JSON..=) "Memory" Prelude.<$> memory,
               (JSON..=) "MemoryReservation" Prelude.<$> memoryReservation,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ResourceRequirements"
                 Prelude.<$> resourceRequirements]))
instance Property "Command" EcsContainerOverrideProperty where
  type PropertyType "Command" EcsContainerOverrideProperty = ValueList Prelude.Text
  set newValue EcsContainerOverrideProperty {..}
    = EcsContainerOverrideProperty
        {command = Prelude.pure newValue, ..}
instance Property "Cpu" EcsContainerOverrideProperty where
  type PropertyType "Cpu" EcsContainerOverrideProperty = Value Prelude.Integer
  set newValue EcsContainerOverrideProperty {..}
    = EcsContainerOverrideProperty {cpu = Prelude.pure newValue, ..}
instance Property "Environment" EcsContainerOverrideProperty where
  type PropertyType "Environment" EcsContainerOverrideProperty = [EcsEnvironmentVariableProperty]
  set newValue EcsContainerOverrideProperty {..}
    = EcsContainerOverrideProperty
        {environment = Prelude.pure newValue, ..}
instance Property "EnvironmentFiles" EcsContainerOverrideProperty where
  type PropertyType "EnvironmentFiles" EcsContainerOverrideProperty = [EcsEnvironmentFileProperty]
  set newValue EcsContainerOverrideProperty {..}
    = EcsContainerOverrideProperty
        {environmentFiles = Prelude.pure newValue, ..}
instance Property "Memory" EcsContainerOverrideProperty where
  type PropertyType "Memory" EcsContainerOverrideProperty = Value Prelude.Integer
  set newValue EcsContainerOverrideProperty {..}
    = EcsContainerOverrideProperty {memory = Prelude.pure newValue, ..}
instance Property "MemoryReservation" EcsContainerOverrideProperty where
  type PropertyType "MemoryReservation" EcsContainerOverrideProperty = Value Prelude.Integer
  set newValue EcsContainerOverrideProperty {..}
    = EcsContainerOverrideProperty
        {memoryReservation = Prelude.pure newValue, ..}
instance Property "Name" EcsContainerOverrideProperty where
  type PropertyType "Name" EcsContainerOverrideProperty = Value Prelude.Text
  set newValue EcsContainerOverrideProperty {..}
    = EcsContainerOverrideProperty {name = Prelude.pure newValue, ..}
instance Property "ResourceRequirements" EcsContainerOverrideProperty where
  type PropertyType "ResourceRequirements" EcsContainerOverrideProperty = [EcsResourceRequirementProperty]
  set newValue EcsContainerOverrideProperty {..}
    = EcsContainerOverrideProperty
        {resourceRequirements = Prelude.pure newValue, ..}