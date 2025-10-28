module Stratosphere.SES.MailManagerRuleSet.RuleBooleanExpressionProperty (
        module Exports, RuleBooleanExpressionProperty(..),
        mkRuleBooleanExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleBooleanToEvaluateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleBooleanExpressionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulebooleanexpression.html>
    RuleBooleanExpressionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulebooleanexpression.html#cfn-ses-mailmanagerruleset-rulebooleanexpression-evaluate>
                                   evaluate :: RuleBooleanToEvaluateProperty,
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-rulebooleanexpression.html#cfn-ses-mailmanagerruleset-rulebooleanexpression-operator>
                                   operator :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleBooleanExpressionProperty ::
  RuleBooleanToEvaluateProperty
  -> Value Prelude.Text -> RuleBooleanExpressionProperty
mkRuleBooleanExpressionProperty evaluate operator
  = RuleBooleanExpressionProperty
      {haddock_workaround_ = (), evaluate = evaluate,
       operator = operator}
instance ToResourceProperties RuleBooleanExpressionProperty where
  toResourceProperties RuleBooleanExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleBooleanExpression",
         supportsTags = Prelude.False,
         properties = ["Evaluate" JSON..= evaluate,
                       "Operator" JSON..= operator]}
instance JSON.ToJSON RuleBooleanExpressionProperty where
  toJSON RuleBooleanExpressionProperty {..}
    = JSON.object
        ["Evaluate" JSON..= evaluate, "Operator" JSON..= operator]
instance Property "Evaluate" RuleBooleanExpressionProperty where
  type PropertyType "Evaluate" RuleBooleanExpressionProperty = RuleBooleanToEvaluateProperty
  set newValue RuleBooleanExpressionProperty {..}
    = RuleBooleanExpressionProperty {evaluate = newValue, ..}
instance Property "Operator" RuleBooleanExpressionProperty where
  type PropertyType "Operator" RuleBooleanExpressionProperty = Value Prelude.Text
  set newValue RuleBooleanExpressionProperty {..}
    = RuleBooleanExpressionProperty {operator = newValue, ..}