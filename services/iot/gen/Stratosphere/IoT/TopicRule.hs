module Stratosphere.IoT.TopicRule (
        module Exports, TopicRule(..), mkTopicRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.TopicRule.TopicRulePayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TopicRule
  = TopicRule {ruleName :: (Prelude.Maybe (Value Prelude.Text)),
               tags :: (Prelude.Maybe [Tag]),
               topicRulePayload :: TopicRulePayloadProperty}
mkTopicRule :: TopicRulePayloadProperty -> TopicRule
mkTopicRule topicRulePayload
  = TopicRule
      {topicRulePayload = topicRulePayload, ruleName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties TopicRule where
  toResourceProperties TopicRule {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TopicRulePayload" JSON..= topicRulePayload]
                           (Prelude.catMaybes
                              [(JSON..=) "RuleName" Prelude.<$> ruleName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TopicRule where
  toJSON TopicRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TopicRulePayload" JSON..= topicRulePayload]
              (Prelude.catMaybes
                 [(JSON..=) "RuleName" Prelude.<$> ruleName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "RuleName" TopicRule where
  type PropertyType "RuleName" TopicRule = Value Prelude.Text
  set newValue TopicRule {..}
    = TopicRule {ruleName = Prelude.pure newValue, ..}
instance Property "Tags" TopicRule where
  type PropertyType "Tags" TopicRule = [Tag]
  set newValue TopicRule {..}
    = TopicRule {tags = Prelude.pure newValue, ..}
instance Property "TopicRulePayload" TopicRule where
  type PropertyType "TopicRulePayload" TopicRule = TopicRulePayloadProperty
  set newValue TopicRule {..}
    = TopicRule {topicRulePayload = newValue, ..}