module Stratosphere.Wisdom.AIGuardrail.AIGuardrailTopicPolicyConfigProperty (
        module Exports, AIGuardrailTopicPolicyConfigProperty(..),
        mkAIGuardrailTopicPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIGuardrail.GuardrailTopicConfigProperty as Exports
import Stratosphere.ResourceProperties
data AIGuardrailTopicPolicyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailtopicpolicyconfig.html>
    AIGuardrailTopicPolicyConfigProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiguardrail-aiguardrailtopicpolicyconfig.html#cfn-wisdom-aiguardrail-aiguardrailtopicpolicyconfig-topicsconfig>
                                          topicsConfig :: [GuardrailTopicConfigProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAIGuardrailTopicPolicyConfigProperty ::
  [GuardrailTopicConfigProperty]
  -> AIGuardrailTopicPolicyConfigProperty
mkAIGuardrailTopicPolicyConfigProperty topicsConfig
  = AIGuardrailTopicPolicyConfigProperty
      {haddock_workaround_ = (), topicsConfig = topicsConfig}
instance ToResourceProperties AIGuardrailTopicPolicyConfigProperty where
  toResourceProperties AIGuardrailTopicPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrail.AIGuardrailTopicPolicyConfig",
         supportsTags = Prelude.False,
         properties = ["TopicsConfig" JSON..= topicsConfig]}
instance JSON.ToJSON AIGuardrailTopicPolicyConfigProperty where
  toJSON AIGuardrailTopicPolicyConfigProperty {..}
    = JSON.object ["TopicsConfig" JSON..= topicsConfig]
instance Property "TopicsConfig" AIGuardrailTopicPolicyConfigProperty where
  type PropertyType "TopicsConfig" AIGuardrailTopicPolicyConfigProperty = [GuardrailTopicConfigProperty]
  set newValue AIGuardrailTopicPolicyConfigProperty {..}
    = AIGuardrailTopicPolicyConfigProperty
        {topicsConfig = newValue, ..}