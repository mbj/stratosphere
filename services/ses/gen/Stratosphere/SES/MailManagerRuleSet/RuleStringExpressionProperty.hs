module Stratosphere.SES.MailManagerRuleSet.RuleStringExpressionProperty (
        module Exports, RuleStringExpressionProperty(..),
        mkRuleStringExpressionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.MailManagerRuleSet.RuleStringToEvaluateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleStringExpressionProperty
  = RuleStringExpressionProperty {evaluate :: RuleStringToEvaluateProperty,
                                  operator :: (Value Prelude.Text),
                                  values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleStringExpressionProperty ::
  RuleStringToEvaluateProperty
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> RuleStringExpressionProperty
mkRuleStringExpressionProperty evaluate operator values
  = RuleStringExpressionProperty
      {evaluate = evaluate, operator = operator, values = values}
instance ToResourceProperties RuleStringExpressionProperty where
  toResourceProperties RuleStringExpressionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleStringExpression",
         supportsTags = Prelude.False,
         properties = ["Evaluate" JSON..= evaluate,
                       "Operator" JSON..= operator, "Values" JSON..= values]}
instance JSON.ToJSON RuleStringExpressionProperty where
  toJSON RuleStringExpressionProperty {..}
    = JSON.object
        ["Evaluate" JSON..= evaluate, "Operator" JSON..= operator,
         "Values" JSON..= values]
instance Property "Evaluate" RuleStringExpressionProperty where
  type PropertyType "Evaluate" RuleStringExpressionProperty = RuleStringToEvaluateProperty
  set newValue RuleStringExpressionProperty {..}
    = RuleStringExpressionProperty {evaluate = newValue, ..}
instance Property "Operator" RuleStringExpressionProperty where
  type PropertyType "Operator" RuleStringExpressionProperty = Value Prelude.Text
  set newValue RuleStringExpressionProperty {..}
    = RuleStringExpressionProperty {operator = newValue, ..}
instance Property "Values" RuleStringExpressionProperty where
  type PropertyType "Values" RuleStringExpressionProperty = ValueList Prelude.Text
  set newValue RuleStringExpressionProperty {..}
    = RuleStringExpressionProperty {values = newValue, ..}