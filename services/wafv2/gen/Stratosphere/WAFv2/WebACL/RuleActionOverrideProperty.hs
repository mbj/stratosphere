module Stratosphere.WAFv2.WebACL.RuleActionOverrideProperty (
        module Exports, RuleActionOverrideProperty(..),
        mkRuleActionOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RuleActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleActionOverrideProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleactionoverride.html>
    RuleActionOverrideProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleactionoverride.html#cfn-wafv2-webacl-ruleactionoverride-actiontouse>
                                actionToUse :: RuleActionProperty,
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ruleactionoverride.html#cfn-wafv2-webacl-ruleactionoverride-name>
                                name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleActionOverrideProperty ::
  RuleActionProperty
  -> Value Prelude.Text -> RuleActionOverrideProperty
mkRuleActionOverrideProperty actionToUse name
  = RuleActionOverrideProperty
      {haddock_workaround_ = (), actionToUse = actionToUse, name = name}
instance ToResourceProperties RuleActionOverrideProperty where
  toResourceProperties RuleActionOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RuleActionOverride",
         supportsTags = Prelude.False,
         properties = ["ActionToUse" JSON..= actionToUse,
                       "Name" JSON..= name]}
instance JSON.ToJSON RuleActionOverrideProperty where
  toJSON RuleActionOverrideProperty {..}
    = JSON.object
        ["ActionToUse" JSON..= actionToUse, "Name" JSON..= name]
instance Property "ActionToUse" RuleActionOverrideProperty where
  type PropertyType "ActionToUse" RuleActionOverrideProperty = RuleActionProperty
  set newValue RuleActionOverrideProperty {..}
    = RuleActionOverrideProperty {actionToUse = newValue, ..}
instance Property "Name" RuleActionOverrideProperty where
  type PropertyType "Name" RuleActionOverrideProperty = Value Prelude.Text
  set newValue RuleActionOverrideProperty {..}
    = RuleActionOverrideProperty {name = newValue, ..}