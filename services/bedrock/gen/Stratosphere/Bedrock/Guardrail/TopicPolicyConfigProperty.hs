module Stratosphere.Bedrock.Guardrail.TopicPolicyConfigProperty (
        module Exports, TopicPolicyConfigProperty(..),
        mkTopicPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.TopicConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.TopicsTierConfigProperty as Exports
import Stratosphere.ResourceProperties
data TopicPolicyConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicpolicyconfig.html>
    TopicPolicyConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicpolicyconfig.html#cfn-bedrock-guardrail-topicpolicyconfig-topicsconfig>
                               topicsConfig :: [TopicConfigProperty],
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-guardrail-topicpolicyconfig.html#cfn-bedrock-guardrail-topicpolicyconfig-topicstierconfig>
                               topicsTierConfig :: (Prelude.Maybe TopicsTierConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicPolicyConfigProperty ::
  [TopicConfigProperty] -> TopicPolicyConfigProperty
mkTopicPolicyConfigProperty topicsConfig
  = TopicPolicyConfigProperty
      {haddock_workaround_ = (), topicsConfig = topicsConfig,
       topicsTierConfig = Prelude.Nothing}
instance ToResourceProperties TopicPolicyConfigProperty where
  toResourceProperties TopicPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.TopicPolicyConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TopicsConfig" JSON..= topicsConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "TopicsTierConfig" Prelude.<$> topicsTierConfig]))}
instance JSON.ToJSON TopicPolicyConfigProperty where
  toJSON TopicPolicyConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TopicsConfig" JSON..= topicsConfig]
              (Prelude.catMaybes
                 [(JSON..=) "TopicsTierConfig" Prelude.<$> topicsTierConfig])))
instance Property "TopicsConfig" TopicPolicyConfigProperty where
  type PropertyType "TopicsConfig" TopicPolicyConfigProperty = [TopicConfigProperty]
  set newValue TopicPolicyConfigProperty {..}
    = TopicPolicyConfigProperty {topicsConfig = newValue, ..}
instance Property "TopicsTierConfig" TopicPolicyConfigProperty where
  type PropertyType "TopicsTierConfig" TopicPolicyConfigProperty = TopicsTierConfigProperty
  set newValue TopicPolicyConfigProperty {..}
    = TopicPolicyConfigProperty
        {topicsTierConfig = Prelude.pure newValue, ..}