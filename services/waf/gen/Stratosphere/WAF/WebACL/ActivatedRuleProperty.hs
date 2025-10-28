module Stratosphere.WAF.WebACL.ActivatedRuleProperty (
        module Exports, ActivatedRuleProperty(..), mkActivatedRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAF.WebACL.WafActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActivatedRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html>
    ActivatedRuleProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-action>
                           action :: (Prelude.Maybe WafActionProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-priority>
                           priority :: (Value Prelude.Integer),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-ruleid>
                           ruleId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActivatedRuleProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> ActivatedRuleProperty
mkActivatedRuleProperty priority ruleId
  = ActivatedRuleProperty
      {haddock_workaround_ = (), priority = priority, ruleId = ruleId,
       action = Prelude.Nothing}
instance ToResourceProperties ActivatedRuleProperty where
  toResourceProperties ActivatedRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAF::WebACL.ActivatedRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Priority" JSON..= priority, "RuleId" JSON..= ruleId]
                           (Prelude.catMaybes [(JSON..=) "Action" Prelude.<$> action]))}
instance JSON.ToJSON ActivatedRuleProperty where
  toJSON ActivatedRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Priority" JSON..= priority, "RuleId" JSON..= ruleId]
              (Prelude.catMaybes [(JSON..=) "Action" Prelude.<$> action])))
instance Property "Action" ActivatedRuleProperty where
  type PropertyType "Action" ActivatedRuleProperty = WafActionProperty
  set newValue ActivatedRuleProperty {..}
    = ActivatedRuleProperty {action = Prelude.pure newValue, ..}
instance Property "Priority" ActivatedRuleProperty where
  type PropertyType "Priority" ActivatedRuleProperty = Value Prelude.Integer
  set newValue ActivatedRuleProperty {..}
    = ActivatedRuleProperty {priority = newValue, ..}
instance Property "RuleId" ActivatedRuleProperty where
  type PropertyType "RuleId" ActivatedRuleProperty = Value Prelude.Text
  set newValue ActivatedRuleProperty {..}
    = ActivatedRuleProperty {ruleId = newValue, ..}