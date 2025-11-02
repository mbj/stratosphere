module Stratosphere.IoT.TopicRule.LambdaActionProperty (
        LambdaActionProperty(..), mkLambdaActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-lambdaaction.html>
    LambdaActionProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-lambdaaction.html#cfn-iot-topicrule-lambdaaction-functionarn>
                          functionArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaActionProperty :: LambdaActionProperty
mkLambdaActionProperty
  = LambdaActionProperty
      {haddock_workaround_ = (), functionArn = Prelude.Nothing}
instance ToResourceProperties LambdaActionProperty where
  toResourceProperties LambdaActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.LambdaAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FunctionArn" Prelude.<$> functionArn])}
instance JSON.ToJSON LambdaActionProperty where
  toJSON LambdaActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FunctionArn" Prelude.<$> functionArn]))
instance Property "FunctionArn" LambdaActionProperty where
  type PropertyType "FunctionArn" LambdaActionProperty = Value Prelude.Text
  set newValue LambdaActionProperty {..}
    = LambdaActionProperty {functionArn = Prelude.pure newValue, ..}