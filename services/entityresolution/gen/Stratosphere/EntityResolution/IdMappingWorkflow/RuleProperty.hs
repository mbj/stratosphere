module Stratosphere.EntityResolution.IdMappingWorkflow.RuleProperty (
        RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-rule.html>
    RuleProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-rule.html#cfn-entityresolution-idmappingworkflow-rule-matchingkeys>
                  matchingKeys :: (ValueList Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-rule.html#cfn-entityresolution-idmappingworkflow-rule-rulename>
                  ruleName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleProperty ::
  ValueList Prelude.Text -> Value Prelude.Text -> RuleProperty
mkRuleProperty matchingKeys ruleName
  = RuleProperty
      {haddock_workaround_ = (), matchingKeys = matchingKeys,
       ruleName = ruleName}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdMappingWorkflow.Rule",
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