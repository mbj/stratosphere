module Stratosphere.Bedrock.Guardrail.TopicPolicyConfigProperty (
        module Exports, TopicPolicyConfigProperty(..),
        mkTopicPolicyConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Guardrail.TopicConfigProperty as Exports
import Stratosphere.ResourceProperties
data TopicPolicyConfigProperty
  = TopicPolicyConfigProperty {topicsConfig :: [TopicConfigProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicPolicyConfigProperty ::
  [TopicConfigProperty] -> TopicPolicyConfigProperty
mkTopicPolicyConfigProperty topicsConfig
  = TopicPolicyConfigProperty {topicsConfig = topicsConfig}
instance ToResourceProperties TopicPolicyConfigProperty where
  toResourceProperties TopicPolicyConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Guardrail.TopicPolicyConfig",
         supportsTags = Prelude.False,
         properties = ["TopicsConfig" JSON..= topicsConfig]}
instance JSON.ToJSON TopicPolicyConfigProperty where
  toJSON TopicPolicyConfigProperty {..}
    = JSON.object ["TopicsConfig" JSON..= topicsConfig]
instance Property "TopicsConfig" TopicPolicyConfigProperty where
  type PropertyType "TopicsConfig" TopicPolicyConfigProperty = [TopicConfigProperty]
  set newValue TopicPolicyConfigProperty {}
    = TopicPolicyConfigProperty {topicsConfig = newValue, ..}