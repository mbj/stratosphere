module Stratosphere.CustomerProfiles.Domain.MatchingRuleProperty (
        MatchingRuleProperty(..), mkMatchingRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MatchingRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-matchingrule.html>
    MatchingRuleProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-matchingrule.html#cfn-customerprofiles-domain-matchingrule-rule>
                          rule :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchingRuleProperty ::
  ValueList Prelude.Text -> MatchingRuleProperty
mkMatchingRuleProperty rule
  = MatchingRuleProperty {haddock_workaround_ = (), rule = rule}
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
  set newValue MatchingRuleProperty {..}
    = MatchingRuleProperty {rule = newValue, ..}