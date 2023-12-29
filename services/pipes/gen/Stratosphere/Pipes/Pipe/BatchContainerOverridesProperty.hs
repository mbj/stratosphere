module Stratosphere.Pipes.Pipe.BatchContainerOverridesProperty (
        module Exports, BatchContainerOverridesProperty(..),
        mkBatchContainerOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.BatchEnvironmentVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.BatchResourceRequirementProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BatchContainerOverridesProperty
  = BatchContainerOverridesProperty {command :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     environment :: (Prelude.Maybe [BatchEnvironmentVariableProperty]),
                                     instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                                     resourceRequirements :: (Prelude.Maybe [BatchResourceRequirementProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBatchContainerOverridesProperty ::
  BatchContainerOverridesProperty
mkBatchContainerOverridesProperty
  = BatchContainerOverridesProperty
      {command = Prelude.Nothing, environment = Prelude.Nothing,
       instanceType = Prelude.Nothing,
       resourceRequirements = Prelude.Nothing}
instance ToResourceProperties BatchContainerOverridesProperty where
  toResourceProperties BatchContainerOverridesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.BatchContainerOverrides",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Command" Prelude.<$> command,
                            (JSON..=) "Environment" Prelude.<$> environment,
                            (JSON..=) "InstanceType" Prelude.<$> instanceType,
                            (JSON..=) "ResourceRequirements"
                              Prelude.<$> resourceRequirements])}
instance JSON.ToJSON BatchContainerOverridesProperty where
  toJSON BatchContainerOverridesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Command" Prelude.<$> command,
               (JSON..=) "Environment" Prelude.<$> environment,
               (JSON..=) "InstanceType" Prelude.<$> instanceType,
               (JSON..=) "ResourceRequirements"
                 Prelude.<$> resourceRequirements]))
instance Property "Command" BatchContainerOverridesProperty where
  type PropertyType "Command" BatchContainerOverridesProperty = ValueList Prelude.Text
  set newValue BatchContainerOverridesProperty {..}
    = BatchContainerOverridesProperty
        {command = Prelude.pure newValue, ..}
instance Property "Environment" BatchContainerOverridesProperty where
  type PropertyType "Environment" BatchContainerOverridesProperty = [BatchEnvironmentVariableProperty]
  set newValue BatchContainerOverridesProperty {..}
    = BatchContainerOverridesProperty
        {environment = Prelude.pure newValue, ..}
instance Property "InstanceType" BatchContainerOverridesProperty where
  type PropertyType "InstanceType" BatchContainerOverridesProperty = Value Prelude.Text
  set newValue BatchContainerOverridesProperty {..}
    = BatchContainerOverridesProperty
        {instanceType = Prelude.pure newValue, ..}
instance Property "ResourceRequirements" BatchContainerOverridesProperty where
  type PropertyType "ResourceRequirements" BatchContainerOverridesProperty = [BatchResourceRequirementProperty]
  set newValue BatchContainerOverridesProperty {..}
    = BatchContainerOverridesProperty
        {resourceRequirements = Prelude.pure newValue, ..}