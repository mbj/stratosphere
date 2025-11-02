module Stratosphere.IoTTwinMaker.ComponentType.LambdaFunctionProperty (
        LambdaFunctionProperty(..), mkLambdaFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaFunctionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-lambdafunction.html>
    LambdaFunctionProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-componenttype-lambdafunction.html#cfn-iottwinmaker-componenttype-lambdafunction-arn>
                            arn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaFunctionProperty ::
  Value Prelude.Text -> LambdaFunctionProperty
mkLambdaFunctionProperty arn
  = LambdaFunctionProperty {haddock_workaround_ = (), arn = arn}
instance ToResourceProperties LambdaFunctionProperty where
  toResourceProperties LambdaFunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::ComponentType.LambdaFunction",
         supportsTags = Prelude.False, properties = ["Arn" JSON..= arn]}
instance JSON.ToJSON LambdaFunctionProperty where
  toJSON LambdaFunctionProperty {..}
    = JSON.object ["Arn" JSON..= arn]
instance Property "Arn" LambdaFunctionProperty where
  type PropertyType "Arn" LambdaFunctionProperty = Value Prelude.Text
  set newValue LambdaFunctionProperty {..}
    = LambdaFunctionProperty {arn = newValue, ..}