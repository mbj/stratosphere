module Stratosphere.StepFunctions.StateMachine.TracingConfigurationProperty (
        TracingConfigurationProperty(..), mkTracingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TracingConfigurationProperty
  = TracingConfigurationProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkTracingConfigurationProperty :: TracingConfigurationProperty
mkTracingConfigurationProperty
  = TracingConfigurationProperty {enabled = Prelude.Nothing}
instance ToResourceProperties TracingConfigurationProperty where
  toResourceProperties TracingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::StateMachine.TracingConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON TracingConfigurationProperty where
  toJSON TracingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" TracingConfigurationProperty where
  type PropertyType "Enabled" TracingConfigurationProperty = Value Prelude.Bool
  set newValue TracingConfigurationProperty {}
    = TracingConfigurationProperty
        {enabled = Prelude.pure newValue, ..}