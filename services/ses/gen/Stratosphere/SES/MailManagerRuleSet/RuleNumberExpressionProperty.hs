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
  = RuleNumberExpressionProperty {evaluate :: RuleNumberToEvaluateProperty,
                                  operator :: (Value Prelude.Text),
                                  value :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleNumberExpressionProperty ::
  RuleNumberToEvaluateProperty
  -> Value Prelude.Text
     -> Value Prelude.Double -> RuleNumberExpressionProperty
mkRuleNumberExpressionProperty evaluate operator value
  = RuleNumberExpressionProperty
      {evaluate = evaluate, operator = operator, value = value}
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