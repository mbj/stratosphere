module Stratosphere.Greengrass.FunctionDefinition.ExecutionProperty (
        module Exports, ExecutionProperty(..), mkExecutionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.FunctionDefinition.RunAsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExecutionProperty
  = ExecutionProperty {isolationMode :: (Prelude.Maybe (Value Prelude.Text)),
                       runAs :: (Prelude.Maybe RunAsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExecutionProperty :: ExecutionProperty
mkExecutionProperty
  = ExecutionProperty
      {isolationMode = Prelude.Nothing, runAs = Prelude.Nothing}
instance ToResourceProperties ExecutionProperty where
  toResourceProperties ExecutionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::FunctionDefinition.Execution",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IsolationMode" Prelude.<$> isolationMode,
                            (JSON..=) "RunAs" Prelude.<$> runAs])}
instance JSON.ToJSON ExecutionProperty where
  toJSON ExecutionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IsolationMode" Prelude.<$> isolationMode,
               (JSON..=) "RunAs" Prelude.<$> runAs]))
instance Property "IsolationMode" ExecutionProperty where
  type PropertyType "IsolationMode" ExecutionProperty = Value Prelude.Text
  set newValue ExecutionProperty {..}
    = ExecutionProperty {isolationMode = Prelude.pure newValue, ..}
instance Property "RunAs" ExecutionProperty where
  type PropertyType "RunAs" ExecutionProperty = RunAsProperty
  set newValue ExecutionProperty {..}
    = ExecutionProperty {runAs = Prelude.pure newValue, ..}