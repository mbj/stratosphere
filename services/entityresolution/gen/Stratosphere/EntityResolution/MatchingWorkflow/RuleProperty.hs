module Stratosphere.EntityResolution.MatchingWorkflow.RuleProperty (
        RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = RuleProperty {matchingKeys :: (ValueList Prelude.Text),
                  ruleName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleProperty ::
  ValueList Prelude.Text -> Value Prelude.Text -> RuleProperty
mkRuleProperty matchingKeys ruleName
  = RuleProperty {matchingKeys = matchingKeys, ruleName = ruleName}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::MatchingWorkflow.Rule",
         supportsTags = Prelude.False,
         properties = ["MatchingKeys" JSON..= matchingKeys,
                       "RuleName" JSON..= ruleName]}
instance JSON.ToJSON RuleProperty where
  toJSON RuleProperty {..}
    = JSON.object
        ["MatchingKeys" JSON..= matchingKeys, "RuleName" JSON..= ruleName]
instance Property "MatchingKeys" RuleProperty where
  type PropertyType "MatchingKeys" RuleProperty = ValueList Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {matchingKeys = newValue, ..}
instance Property "RuleName" RuleProperty where
  type PropertyType "RuleName" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {ruleName = newValue, ..}