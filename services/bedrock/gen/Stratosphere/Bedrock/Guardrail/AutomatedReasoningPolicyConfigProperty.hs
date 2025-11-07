module Stratosphere.Bedrock.Guardrail.AutomatedReasoningPolicyConfigProperty (
        AutomatedReasoningPolicyConfigProperty(..),
        mkAutomatedReasoningPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutomatedReasoningPolicyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-automatedreasoningpolicyconfig.html>
    AutomatedReasoningPolicyConfigProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-automatedreasoningpolicyconfig.html#cfn-bedrock-guardrail-automatedreasoningpolicyconfig-confidencethreshold>
                                            confidenceThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-automatedreasoningpolicyconfig.html#cfn-bedrock-guardrail-automatedreasoningpolicyconfig-policies>
                                            policies :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutomatedReasoningPolicyConfigProperty ::
  ValueList Prelude.Text -> AutomatedReasoningPolicyConfigProperty
mkAutomatedReasoningPolicyConfigProperty policies
  = AutomatedReasoningPolicyConfigProperty
      {haddock_workaround_ = (), policies = policies,
       confidenceThreshold = Prelude.Nothing}
instance ToResourceProperties AutomatedReasoningPolicyConfigProperty where
  toResourceProperties AutomatedReasoningPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.AutomatedReasoningPolicyConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Policies" JSON..= policies]
                           (Prelude.catMaybes
                              [(JSON..=) "ConfidenceThreshold"
                                 Prelude.<$> confidenceThreshold]))}
instance JSON.ToJSON AutomatedReasoningPolicyConfigProperty where
  toJSON AutomatedReasoningPolicyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Policies" JSON..= policies]
              (Prelude.catMaybes
                 [(JSON..=) "ConfidenceThreshold"
                    Prelude.<$> confidenceThreshold])))
instance Property "ConfidenceThreshold" AutomatedReasoningPolicyConfigProperty where
  type PropertyType "ConfidenceThreshold" AutomatedReasoningPolicyConfigProperty = Value Prelude.Double
  set newValue AutomatedReasoningPolicyConfigProperty {..}
    = AutomatedReasoningPolicyConfigProperty
        {confidenceThreshold = Prelude.pure newValue, ..}
instance Property "Policies" AutomatedReasoningPolicyConfigProperty where
  type PropertyType "Policies" AutomatedReasoningPolicyConfigProperty = ValueList Prelude.Text
  set newValue AutomatedReasoningPolicyConfigProperty {..}
    = AutomatedReasoningPolicyConfigProperty {policies = newValue, ..}