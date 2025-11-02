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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetstatemachineparameters.html>
    PipeTargetStateMachineParametersProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetstatemachineparameters.html#cfn-pipes-pipe-pipetargetstatemachineparameters-invocationtype>
                                              invocationType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeTargetStateMachineParametersProperty ::
  PipeTargetStateMachineParametersProperty
mkPipeTargetStateMachineParametersProperty
  = PipeTargetStateMachineParametersProperty
      {haddock_workaround_ = (), invocationType = Prelude.Nothing}
instance ToResourceProperties PipeTargetStateMachineParametersProperty where
  toResourceProperties PipeTargetStateMachineParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetStateMachineParameters",
         supportsTags = Prelude.False,
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
  set newValue PipeTargetStateMachineParametersProperty {..}
    = PipeTargetStateMachineParametersProperty
        {invocationType = Prelude.pure newValue, ..}