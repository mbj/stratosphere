module Stratosphere.KinesisAnalytics.Application.InputLambdaProcessorProperty (
        InputLambdaProcessorProperty(..), mkInputLambdaProcessorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputLambdaProcessorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputlambdaprocessor.html>
    InputLambdaProcessorProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputlambdaprocessor.html#cfn-kinesisanalytics-application-inputlambdaprocessor-resourcearn>
                                  resourceARN :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputlambdaprocessor.html#cfn-kinesisanalytics-application-inputlambdaprocessor-rolearn>
                                  roleARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputLambdaProcessorProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> InputLambdaProcessorProperty
mkInputLambdaProcessorProperty resourceARN roleARN
  = InputLambdaProcessorProperty
      {haddock_workaround_ = (), resourceARN = resourceARN,
       roleARN = roleARN}
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