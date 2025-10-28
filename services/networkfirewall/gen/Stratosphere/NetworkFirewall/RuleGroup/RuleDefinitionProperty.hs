module Stratosphere.NetworkFirewall.RuleGroup.RuleDefinitionProperty (
        module Exports, RuleDefinitionProperty(..),
        mkRuleDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.MatchAttributesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ruledefinition.html>
    RuleDefinitionProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ruledefinition.html#cfn-networkfirewall-rulegroup-ruledefinition-actions>
                            actions :: (ValueList Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-ruledefinition.html#cfn-networkfirewall-rulegroup-ruledefinition-matchattributes>
                            matchAttributes :: MatchAttributesProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleDefinitionProperty ::
  ValueList Prelude.Text
  -> MatchAttributesProperty -> RuleDefinitionProperty
mkRuleDefinitionProperty actions matchAttributes
  = RuleDefinitionProperty
      {haddock_workaround_ = (), actions = actions,
       matchAttributes = matchAttributes}
instance ToResourceProperties RuleDefinitionProperty where
  toResourceProperties RuleDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.RuleDefinition",
         supportsTags = Prelude.False,
         properties = ["Actions" JSON..= actions,
                       "MatchAttributes" JSON..= matchAttributes]}
instance JSON.ToJSON RuleDefinitionProperty where
  toJSON RuleDefinitionProperty {..}
    = JSON.object
        ["Actions" JSON..= actions,
         "MatchAttributes" JSON..= matchAttributes]
instance Property "Actions" RuleDefinitionProperty where
  type PropertyType "Actions" RuleDefinitionProperty = ValueList Prelude.Text
  set newValue RuleDefinitionProperty {..}
    = RuleDefinitionProperty {actions = newValue, ..}
instance Property "MatchAttributes" RuleDefinitionProperty where
  type PropertyType "MatchAttributes" RuleDefinitionProperty = MatchAttributesProperty
  set newValue RuleDefinitionProperty {..}
    = RuleDefinitionProperty {matchAttributes = newValue, ..}