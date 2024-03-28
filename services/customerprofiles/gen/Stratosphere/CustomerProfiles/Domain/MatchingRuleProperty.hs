module Stratosphere.CustomerProfiles.Domain.MatchingRuleProperty (
        MatchingRuleProperty(..), mkMatchingRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MatchingRuleProperty
  = MatchingRuleProperty {rule :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchingRuleProperty ::
  ValueList Prelude.Text -> MatchingRuleProperty
mkMatchingRuleProperty rule = MatchingRuleProperty {rule = rule}
instance ToResourceProperties MatchingRuleProperty where
  toResourceProperties MatchingRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Domain.MatchingRule",
         supportsTags = Prelude.False, properties = ["Rule" JSON..= rule]}
instance JSON.ToJSON MatchingRuleProperty where
  toJSON MatchingRuleProperty {..}
    = JSON.object ["Rule" JSON..= rule]
instance Property "Rule" MatchingRuleProperty where
  type PropertyType "Rule" MatchingRuleProperty = ValueList Prelude.Text
  set newValue MatchingRuleProperty {}
    = MatchingRuleProperty {rule = newValue, ..}