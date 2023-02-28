module Stratosphere.KinesisAnalytics.Application.InputLambdaProcessorProperty (
        InputLambdaProcessorProperty(..), mkInputLambdaProcessorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputLambdaProcessorProperty
  = InputLambdaProcessorProperty {resourceARN :: (Value Prelude.Text),
                                  roleARN :: (Value Prelude.Text)}
mkInputLambdaProcessorProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> InputLambdaProcessorProperty
mkInputLambdaProcessorProperty resourceARN roleARN
  = InputLambdaProcessorProperty
      {resourceARN = resourceARN, roleARN = roleARN}
instance ToResourceProperties InputLambdaProcessorProperty where
  toResourceProperties InputLambdaProcessorProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::Application.InputLambdaProcessor",
         supportsTags = Prelude.False,
         properties = ["ResourceARN" JSON..= resourceARN,
                       "RoleARN" JSON..= roleARN]}
instance JSON.ToJSON InputLambdaProcessorProperty where
  toJSON InputLambdaProcessorProperty {..}
    = JSON.object
        ["ResourceARN" JSON..= resourceARN, "RoleARN" JSON..= roleARN]
instance Property "ResourceARN" InputLambdaProcessorProperty where
  type PropertyType "ResourceARN" InputLambdaProcessorProperty = Value Prelude.Text
  set newValue InputLambdaProcessorProperty {..}
    = InputLambdaProcessorProperty {resourceARN = newValue, ..}
instance Property "RoleARN" InputLambdaProcessorProperty where
  type PropertyType "RoleARN" InputLambdaProcessorProperty = Value Prelude.Text
  set newValue InputLambdaProcessorProperty {..}
    = InputLambdaProcessorProperty {roleARN = newValue, ..}