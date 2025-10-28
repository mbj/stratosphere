module Stratosphere.StepFunctions.StateMachine.TracingConfigurationProperty (
        TracingConfigurationProperty(..), mkTracingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TracingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-tracingconfiguration.html>
    TracingConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-tracingconfiguration.html#cfn-stepfunctions-statemachine-tracingconfiguration-enabled>
                                  enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTracingConfigurationProperty :: TracingConfigurationProperty
mkTracingConfigurationProperty
  = TracingConfigurationProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
instance ToResourceProperties TracingConfigurationProperty where
  toResourceProperties TracingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::StepFunctions::StateMachine.TracingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON TracingConfigurationProperty where
  toJSON TracingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" TracingConfigurationProperty where
  type PropertyType "Enabled" TracingConfigurationProperty = Value Prelude.Bool
  set newValue TracingConfigurationProperty {..}
    = TracingConfigurationProperty
        {enabled = Prelude.pure newValue, ..}