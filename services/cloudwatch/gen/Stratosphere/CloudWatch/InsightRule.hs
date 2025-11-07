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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html>
    InsightRule {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html#cfn-cloudwatch-insightrule-applyontransformedlogs>
                 applyOnTransformedLogs :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html#cfn-cloudwatch-insightrule-rulebody>
                 ruleBody :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html#cfn-cloudwatch-insightrule-rulename>
                 ruleName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html#cfn-cloudwatch-insightrule-rulestate>
                 ruleState :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html#cfn-cloudwatch-insightrule-tags>
                 tags :: (Prelude.Maybe TagsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInsightRule ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> InsightRule
mkInsightRule ruleBody ruleName ruleState
  = InsightRule
      {haddock_workaround_ = (), ruleBody = ruleBody,
       ruleName = ruleName, ruleState = ruleState,
       applyOnTransformedLogs = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties InsightRule where
  toResourceProperties InsightRule {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::InsightRule",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RuleBody" JSON..= ruleBody, "RuleName" JSON..= ruleName,
                            "RuleState" JSON..= ruleState]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplyOnTransformedLogs"
                                 Prelude.<$> applyOnTransformedLogs,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON InsightRule where
  toJSON InsightRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RuleBody" JSON..= ruleBody, "RuleName" JSON..= ruleName,
               "RuleState" JSON..= ruleState]
              (Prelude.catMaybes
                 [(JSON..=) "ApplyOnTransformedLogs"
                    Prelude.<$> applyOnTransformedLogs,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplyOnTransformedLogs" InsightRule where
  type PropertyType "ApplyOnTransformedLogs" InsightRule = Value Prelude.Bool
  set newValue InsightRule {..}
    = InsightRule {applyOnTransformedLogs = Prelude.pure newValue, ..}
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