module Stratosphere.Route53RecoveryControl.SafetyRule.RuleConfigProperty (
        RuleConfigProperty(..), mkRuleConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleConfigProperty
  = RuleConfigProperty {inverted :: (Value Prelude.Bool),
                        threshold :: (Value Prelude.Integer),
                        type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleConfigProperty ::
  Value Prelude.Bool
  -> Value Prelude.Integer
     -> Value Prelude.Text -> RuleConfigProperty
mkRuleConfigProperty inverted threshold type'
  = RuleConfigProperty
      {inverted = inverted, threshold = threshold, type' = type'}
instance ToResourceProperties RuleConfigProperty where
  toResourceProperties RuleConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryControl::SafetyRule.RuleConfig",
         supportsTags = Prelude.False,
         properties = ["Inverted" JSON..= inverted,
                       "Threshold" JSON..= threshold, "Type" JSON..= type']}
instance JSON.ToJSON RuleConfigProperty where
  toJSON RuleConfigProperty {..}
    = JSON.object
        ["Inverted" JSON..= inverted, "Threshold" JSON..= threshold,
         "Type" JSON..= type']
instance Property "Inverted" RuleConfigProperty where
  type PropertyType "Inverted" RuleConfigProperty = Value Prelude.Bool
  set newValue RuleConfigProperty {..}
    = RuleConfigProperty {inverted = newValue, ..}
instance Property "Threshold" RuleConfigProperty where
  type PropertyType "Threshold" RuleConfigProperty = Value Prelude.Integer
  set newValue RuleConfigProperty {..}
    = RuleConfigProperty {threshold = newValue, ..}
instance Property "Type" RuleConfigProperty where
  type PropertyType "Type" RuleConfigProperty = Value Prelude.Text
  set newValue RuleConfigProperty {..}
    = RuleConfigProperty {type' = newValue, ..}