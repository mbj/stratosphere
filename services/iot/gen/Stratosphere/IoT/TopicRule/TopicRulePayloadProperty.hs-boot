module Stratosphere.IoT.TopicRule.TopicRulePayloadProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TopicRulePayloadProperty :: Prelude.Type
instance ToResourceProperties TopicRulePayloadProperty
instance JSON.ToJSON TopicRulePayloadProperty