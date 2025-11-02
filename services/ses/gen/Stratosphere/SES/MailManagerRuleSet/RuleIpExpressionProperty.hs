module Stratosphere.SES.MailManagerRuleSet.RuleIpExpressionProperty (
        module Exports, RuleIpExpressionProperty(..),
        mkRuleIpExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleIpToEvaluateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleIpExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleipexpression.html>
    RuleIpExpressionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleipexpression.html#cfn-ses-mailmanagerruleset-ruleipexpression-evaluate>
                              evaluate :: RuleIpToEvaluateProperty,
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleipexpression.html#cfn-ses-mailmanagerruleset-ruleipexpression-operator>
                              operator :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleipexpression.html#cfn-ses-mailmanagerruleset-ruleipexpression-values>
                              values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleIpExpressionProperty ::
  RuleIpToEvaluateProperty
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> RuleIpExpressionProperty
mkRuleIpExpressionProperty evaluate operator values
  = RuleIpExpressionProperty
      {haddock_workaround_ = (), evaluate = evaluate,
       operator = operator, values = values}
instance ToResourceProperties RuleIpExpressionProperty where
  toResourceProperties RuleIpExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleIpExpression",
         supportsTags = Prelude.False,
         properties = ["Evaluate" JSON..= evaluate,
                       "Operator" JSON..= operator, "Values" JSON..= values]}
instance JSON.ToJSON RuleIpExpressionProperty where
  toJSON RuleIpExpressionProperty {..}
    = JSON.object
        ["Evaluate" JSON..= evaluate, "Operator" JSON..= operator,
         "Values" JSON..= values]
instance Property "Evaluate" RuleIpExpressionProperty where
  type PropertyType "Evaluate" RuleIpExpressionProperty = RuleIpToEvaluateProperty
  set newValue RuleIpExpressionProperty {..}
    = RuleIpExpressionProperty {evaluate = newValue, ..}
instance Property "Operator" RuleIpExpressionProperty where
  type PropertyType "Operator" RuleIpExpressionProperty = Value Prelude.Text
  set newValue RuleIpExpressionProperty {..}
    = RuleIpExpressionProperty {operator = newValue, ..}
instance Property "Values" RuleIpExpressionProperty where
  type PropertyType "Values" RuleIpExpressionProperty = ValueList Prelude.Text
  set newValue RuleIpExpressionProperty {..}
    = RuleIpExpressionProperty {values = newValue, ..}