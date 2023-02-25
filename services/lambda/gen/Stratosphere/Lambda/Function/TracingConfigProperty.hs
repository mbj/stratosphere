module Stratosphere.Lambda.Function.TracingConfigProperty (
        TracingConfigProperty(..), mkTracingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TracingConfigProperty
  = TracingConfigProperty {mode :: (Prelude.Maybe (Value Prelude.Text))}
mkTracingConfigProperty :: TracingConfigProperty
mkTracingConfigProperty
  = TracingConfigProperty {mode = Prelude.Nothing}
instance ToResourceProperties TracingConfigProperty where
  toResourceProperties TracingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.TracingConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Mode" Prelude.<$> mode])}
instance JSON.ToJSON TracingConfigProperty where
  toJSON TracingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Mode" Prelude.<$> mode]))
instance Property "Mode" TracingConfigProperty where
  type PropertyType "Mode" TracingConfigProperty = Value Prelude.Text
  set newValue TracingConfigProperty {}
    = TracingConfigProperty {mode = Prelude.pure newValue, ..}