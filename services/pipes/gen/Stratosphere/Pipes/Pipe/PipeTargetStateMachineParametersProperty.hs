module Stratosphere.Pipes.Pipe.PipeTargetStateMachineParametersProperty (
        PipeTargetStateMachineParametersProperty(..),
        mkPipeTargetStateMachineParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeTargetStateMachineParametersProperty
  = PipeTargetStateMachineParametersProperty {invocationType :: (Prelude.Maybe (Value Prelude.Text))}
mkPipeTargetStateMachineParametersProperty ::
  PipeTargetStateMachineParametersProperty
mkPipeTargetStateMachineParametersProperty
  = PipeTargetStateMachineParametersProperty
      {invocationType = Prelude.Nothing}
instance ToResourceProperties PipeTargetStateMachineParametersProperty where
  toResourceProperties PipeTargetStateMachineParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetStateMachineParameters",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InvocationType" Prelude.<$> invocationType])}
instance JSON.ToJSON PipeTargetStateMachineParametersProperty where
  toJSON PipeTargetStateMachineParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InvocationType" Prelude.<$> invocationType]))
instance Property "InvocationType" PipeTargetStateMachineParametersProperty where
  type PropertyType "InvocationType" PipeTargetStateMachineParametersProperty = Value Prelude.Text
  set newValue PipeTargetStateMachineParametersProperty {}
    = PipeTargetStateMachineParametersProperty
        {invocationType = Prelude.pure newValue, ..}