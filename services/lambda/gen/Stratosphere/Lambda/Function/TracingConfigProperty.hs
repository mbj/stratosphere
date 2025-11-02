module Stratosphere.Lambda.Function.TracingConfigProperty (
        TracingConfigProperty(..), mkTracingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TracingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-tracingconfig.html>
    TracingConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-tracingconfig.html#cfn-lambda-function-tracingconfig-mode>
                           mode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTracingConfigProperty :: TracingConfigProperty
mkTracingConfigProperty
  = TracingConfigProperty
      {haddock_workaround_ = (), mode = Prelude.Nothing}
instance ToResourceProperties TracingConfigProperty where
  toResourceProperties TracingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.TracingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Mode" Prelude.<$> mode])}
instance JSON.ToJSON TracingConfigProperty where
  toJSON TracingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Mode" Prelude.<$> mode]))
instance Property "Mode" TracingConfigProperty where
  type PropertyType "Mode" TracingConfigProperty = Value Prelude.Text
  set newValue TracingConfigProperty {..}
    = TracingConfigProperty {mode = Prelude.pure newValue, ..}