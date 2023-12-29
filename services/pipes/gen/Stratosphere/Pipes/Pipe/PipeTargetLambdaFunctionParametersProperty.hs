module Stratosphere.Pipes.Pipe.PipeTargetLambdaFunctionParametersProperty (
        PipeTargetLambdaFunctionParametersProperty(..),
        mkPipeTargetLambdaFunctionParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeTargetLambdaFunctionParametersProperty
  = PipeTargetLambdaFunctionParametersProperty {invocationType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeTargetLambdaFunctionParametersProperty ::
  PipeTargetLambdaFunctionParametersProperty
mkPipeTargetLambdaFunctionParametersProperty
  = PipeTargetLambdaFunctionParametersProperty
      {invocationType = Prelude.Nothing}
instance ToResourceProperties PipeTargetLambdaFunctionParametersProperty where
  toResourceProperties
    PipeTargetLambdaFunctionParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetLambdaFunctionParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InvocationType" Prelude.<$> invocationType])}
instance JSON.ToJSON PipeTargetLambdaFunctionParametersProperty where
  toJSON PipeTargetLambdaFunctionParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InvocationType" Prelude.<$> invocationType]))
instance Property "InvocationType" PipeTargetLambdaFunctionParametersProperty where
  type PropertyType "InvocationType" PipeTargetLambdaFunctionParametersProperty = Value Prelude.Text
  set newValue PipeTargetLambdaFunctionParametersProperty {}
    = PipeTargetLambdaFunctionParametersProperty
        {invocationType = Prelude.pure newValue, ..}