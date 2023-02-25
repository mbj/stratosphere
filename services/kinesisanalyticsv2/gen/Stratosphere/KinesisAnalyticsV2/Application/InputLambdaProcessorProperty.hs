module Stratosphere.KinesisAnalyticsV2.Application.InputLambdaProcessorProperty (
        InputLambdaProcessorProperty(..), mkInputLambdaProcessorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputLambdaProcessorProperty
  = InputLambdaProcessorProperty {resourceARN :: (Value Prelude.Text)}
mkInputLambdaProcessorProperty ::
  Value Prelude.Text -> InputLambdaProcessorProperty
mkInputLambdaProcessorProperty resourceARN
  = InputLambdaProcessorProperty {resourceARN = resourceARN}
instance ToResourceProperties InputLambdaProcessorProperty where
  toResourceProperties InputLambdaProcessorProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.InputLambdaProcessor",
         properties = ["ResourceARN" JSON..= resourceARN]}
instance JSON.ToJSON InputLambdaProcessorProperty where
  toJSON InputLambdaProcessorProperty {..}
    = JSON.object ["ResourceARN" JSON..= resourceARN]
instance Property "ResourceARN" InputLambdaProcessorProperty where
  type PropertyType "ResourceARN" InputLambdaProcessorProperty = Value Prelude.Text
  set newValue InputLambdaProcessorProperty {}
    = InputLambdaProcessorProperty {resourceARN = newValue, ..}