module Stratosphere.Greengrass.FunctionDefinitionVersion.ExecutionProperty (
        module Exports, ExecutionProperty(..), mkExecutionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Greengrass.FunctionDefinitionVersion.RunAsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExecutionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html>
    ExecutionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html#cfn-greengrass-functiondefinitionversion-execution-isolationmode>
                       isolationMode :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html#cfn-greengrass-functiondefinitionversion-execution-runas>
                       runAs :: (Prelude.Maybe RunAsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExecutionProperty :: ExecutionProperty
mkExecutionProperty
  = ExecutionProperty
      {haddock_workaround_ = (), isolationMode = Prelude.Nothing,
       runAs = Prelude.Nothing}
instance ToResourceProperties ExecutionProperty where
  toResourceProperties ExecutionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Greengrass::FunctionDefinitionVersion.Execution",
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