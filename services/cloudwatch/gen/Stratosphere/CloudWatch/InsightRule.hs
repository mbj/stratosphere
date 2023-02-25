module Stratosphere.CloudWatch.InsightRule (
        module Exports, InsightRule(..), mkInsightRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.InsightRule.TagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InsightRule
  = InsightRule {ruleBody :: (Value Prelude.Text),
                 ruleName :: (Value Prelude.Text),
                 ruleState :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe TagsProperty)}
mkInsightRule ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> InsightRule
mkInsightRule ruleBody ruleName ruleState
  = InsightRule
      {ruleBody = ruleBody, ruleName = ruleName, ruleState = ruleState,
       tags = Prelude.Nothing}
instance ToResourceProperties InsightRule where
  toResourceProperties InsightRule {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::InsightRule",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RuleBody" JSON..= ruleBody, "RuleName" JSON..= ruleName,
                            "RuleState" JSON..= ruleState]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON InsightRule where
  toJSON InsightRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RuleBody" JSON..= ruleBody, "RuleName" JSON..= ruleName,
               "RuleState" JSON..= ruleState]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "RuleBody" InsightRule where
  type PropertyType "RuleBody" InsightRule = Value Prelude.Text
  set newValue InsightRule {..}
    = InsightRule {ruleBody = newValue, ..}
instance Property "RuleName" InsightRule where
  type PropertyType "RuleName" InsightRule = Value Prelude.Text
  set newValue InsightRule {..}
    = InsightRule {ruleName = newValue, ..}
instance Property "RuleState" InsightRule where
  type PropertyType "RuleState" InsightRule = Value Prelude.Text
  set newValue InsightRule {..}
    = InsightRule {ruleState = newValue, ..}
instance Property "Tags" InsightRule where
  type PropertyType "Tags" InsightRule = TagsProperty
  set newValue InsightRule {..}
    = InsightRule {tags = Prelude.pure newValue, ..}