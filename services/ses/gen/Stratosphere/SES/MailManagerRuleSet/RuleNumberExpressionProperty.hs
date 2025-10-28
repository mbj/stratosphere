module Stratosphere.SES.MailManagerRuleSet.RuleNumberExpressionProperty (
        module Exports, RuleNumberExpressionProperty(..),
        mkRuleNumberExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleNumberToEvaluateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleNumberExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulenumberexpression.html>
    RuleNumberExpressionProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulenumberexpression.html#cfn-ses-mailmanagerruleset-rulenumberexpression-evaluate>
                                  evaluate :: RuleNumberToEvaluateProperty,
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulenumberexpression.html#cfn-ses-mailmanagerruleset-rulenumberexpression-operator>
                                  operator :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulenumberexpression.html#cfn-ses-mailmanagerruleset-rulenumberexpression-value>
                                  value :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleNumberExpressionProperty ::
  RuleNumberToEvaluateProperty
  -> Value Prelude.Text
     -> Value Prelude.Double -> RuleNumberExpressionProperty
mkRuleNumberExpressionProperty evaluate operator value
  = RuleNumberExpressionProperty
      {haddock_workaround_ = (), evaluate = evaluate,
       operator = operator, value = value}
instance ToResourceProperties RuleNumberExpressionProperty where
  toResourceProperties RuleNumberExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleNumberExpression",
         supportsTags = Prelude.False,
         properties = ["Evaluate" JSON..= evaluate,
                       "Operator" JSON..= operator, "Value" JSON..= value]}
instance JSON.ToJSON RuleNumberExpressionProperty where
  toJSON RuleNumberExpressionProperty {..}
    = JSON.object
        ["Evaluate" JSON..= evaluate, "Operator" JSON..= operator,
         "Value" JSON..= value]
instance Property "Evaluate" RuleNumberExpressionProperty where
  type PropertyType "Evaluate" RuleNumberExpressionProperty = RuleNumberToEvaluateProperty
  set newValue RuleNumberExpressionProperty {..}
    = RuleNumberExpressionProperty {evaluate = newValue, ..}
instance Property "Operator" RuleNumberExpressionProperty where
  type PropertyType "Operator" RuleNumberExpressionProperty = Value Prelude.Text
  set newValue RuleNumberExpressionProperty {..}
    = RuleNumberExpressionProperty {operator = newValue, ..}
instance Property "Value" RuleNumberExpressionProperty where
  type PropertyType "Value" RuleNumberExpressionProperty = Value Prelude.Double
  set newValue RuleNumberExpressionProperty {..}
    = RuleNumberExpressionProperty {value = newValue, ..}