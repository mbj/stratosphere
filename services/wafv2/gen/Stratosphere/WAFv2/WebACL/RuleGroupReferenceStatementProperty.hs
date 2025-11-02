module Stratosphere.WAFv2.WebACL.RuleGroupReferenceStatementProperty (
        module Exports, RuleGroupReferenceStatementProperty(..),
        mkRuleGroupReferenceStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ExcludedRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RuleActionOverrideProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleGroupReferenceStatementProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html>
    RuleGroupReferenceStatementProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-arn>
                                         arn :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-excludedrules>
                                         excludedRules :: (Prelude.Maybe [ExcludedRuleProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-ruleactionoverrides>
                                         ruleActionOverrides :: (Prelude.Maybe [RuleActionOverrideProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleGroupReferenceStatementProperty ::
  Value Prelude.Text -> RuleGroupReferenceStatementProperty
mkRuleGroupReferenceStatementProperty arn
  = RuleGroupReferenceStatementProperty
      {haddock_workaround_ = (), arn = arn,
       excludedRules = Prelude.Nothing,
       ruleActionOverrides = Prelude.Nothing}
instance ToResourceProperties RuleGroupReferenceStatementProperty where
  toResourceProperties RuleGroupReferenceStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.RuleGroupReferenceStatement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Arn" JSON..= arn]
                           (Prelude.catMaybes
                              [(JSON..=) "ExcludedRules" Prelude.<$> excludedRules,
                               (JSON..=) "RuleActionOverrides" Prelude.<$> ruleActionOverrides]))}
instance JSON.ToJSON RuleGroupReferenceStatementProperty where
  toJSON RuleGroupReferenceStatementProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Arn" JSON..= arn]
              (Prelude.catMaybes
                 [(JSON..=) "ExcludedRules" Prelude.<$> excludedRules,
                  (JSON..=) "RuleActionOverrides" Prelude.<$> ruleActionOverrides])))
instance Property "Arn" RuleGroupReferenceStatementProperty where
  type PropertyType "Arn" RuleGroupReferenceStatementProperty = Value Prelude.Text
  set newValue RuleGroupReferenceStatementProperty {..}
    = RuleGroupReferenceStatementProperty {arn = newValue, ..}
instance Property "ExcludedRules" RuleGroupReferenceStatementProperty where
  type PropertyType "ExcludedRules" RuleGroupReferenceStatementProperty = [ExcludedRuleProperty]
  set newValue RuleGroupReferenceStatementProperty {..}
    = RuleGroupReferenceStatementProperty
        {excludedRules = Prelude.pure newValue, ..}
instance Property "RuleActionOverrides" RuleGroupReferenceStatementProperty where
  type PropertyType "RuleActionOverrides" RuleGroupReferenceStatementProperty = [RuleActionOverrideProperty]
  set newValue RuleGroupReferenceStatementProperty {..}
    = RuleGroupReferenceStatementProperty
        {ruleActionOverrides = Prelude.pure newValue, ..}