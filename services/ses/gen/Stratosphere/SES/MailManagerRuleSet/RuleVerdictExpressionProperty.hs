module Stratosphere.SES.MailManagerRuleSet.RuleVerdictExpressionProperty (
        module Exports, RuleVerdictExpressionProperty(..),
        mkRuleVerdictExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleVerdictToEvaluateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleVerdictExpressionProperty
  = RuleVerdictExpressionProperty {evaluate :: RuleVerdictToEvaluateProperty,
                                   operator :: (Value Prelude.Text),
                                   values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleVerdictExpressionProperty ::
  RuleVerdictToEvaluateProperty
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> RuleVerdictExpressionProperty
mkRuleVerdictExpressionProperty evaluate operator values
  = RuleVerdictExpressionProperty
      {evaluate = evaluate, operator = operator, values = values}
instance ToResourceProperties RuleVerdictExpressionProperty where
  toResourceProperties RuleVerdictExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleVerdictExpression",
         supportsTags = Prelude.False,
         properties = ["Evaluate" JSON..= evaluate,
                       "Operator" JSON..= operator, "Values" JSON..= values]}
instance JSON.ToJSON RuleVerdictExpressionProperty where
  toJSON RuleVerdictExpressionProperty {..}
    = JSON.object
        ["Evaluate" JSON..= evaluate, "Operator" JSON..= operator,
         "Values" JSON..= values]
instance Property "Evaluate" RuleVerdictExpressionProperty where
  type PropertyType "Evaluate" RuleVerdictExpressionProperty = RuleVerdictToEvaluateProperty
  set newValue RuleVerdictExpressionProperty {..}
    = RuleVerdictExpressionProperty {evaluate = newValue, ..}
instance Property "Operator" RuleVerdictExpressionProperty where
  type PropertyType "Operator" RuleVerdictExpressionProperty = Value Prelude.Text
  set newValue RuleVerdictExpressionProperty {..}
    = RuleVerdictExpressionProperty {operator = newValue, ..}
instance Property "Values" RuleVerdictExpressionProperty where
  type PropertyType "Values" RuleVerdictExpressionProperty = ValueList Prelude.Text
  set newValue RuleVerdictExpressionProperty {..}
    = RuleVerdictExpressionProperty {values = newValue, ..}