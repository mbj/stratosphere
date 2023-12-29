module Stratosphere.NetworkFirewall.FirewallPolicy.StatefulRuleGroupReferenceProperty (
        module Exports, StatefulRuleGroupReferenceProperty(..),
        mkStatefulRuleGroupReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.StatefulRuleGroupOverrideProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatefulRuleGroupReferenceProperty
  = StatefulRuleGroupReferenceProperty {override :: (Prelude.Maybe StatefulRuleGroupOverrideProperty),
                                        priority :: (Prelude.Maybe (Value Prelude.Integer)),
                                        resourceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatefulRuleGroupReferenceProperty ::
  Value Prelude.Text -> StatefulRuleGroupReferenceProperty
mkStatefulRuleGroupReferenceProperty resourceArn
  = StatefulRuleGroupReferenceProperty
      {resourceArn = resourceArn, override = Prelude.Nothing,
       priority = Prelude.Nothing}
instance ToResourceProperties StatefulRuleGroupReferenceProperty where
  toResourceProperties StatefulRuleGroupReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.StatefulRuleGroupReference",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceArn" JSON..= resourceArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Override" Prelude.<$> override,
                               (JSON..=) "Priority" Prelude.<$> priority]))}
instance JSON.ToJSON StatefulRuleGroupReferenceProperty where
  toJSON StatefulRuleGroupReferenceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceArn" JSON..= resourceArn]
              (Prelude.catMaybes
                 [(JSON..=) "Override" Prelude.<$> override,
                  (JSON..=) "Priority" Prelude.<$> priority])))
instance Property "Override" StatefulRuleGroupReferenceProperty where
  type PropertyType "Override" StatefulRuleGroupReferenceProperty = StatefulRuleGroupOverrideProperty
  set newValue StatefulRuleGroupReferenceProperty {..}
    = StatefulRuleGroupReferenceProperty
        {override = Prelude.pure newValue, ..}
instance Property "Priority" StatefulRuleGroupReferenceProperty where
  type PropertyType "Priority" StatefulRuleGroupReferenceProperty = Value Prelude.Integer
  set newValue StatefulRuleGroupReferenceProperty {..}
    = StatefulRuleGroupReferenceProperty
        {priority = Prelude.pure newValue, ..}
instance Property "ResourceArn" StatefulRuleGroupReferenceProperty where
  type PropertyType "ResourceArn" StatefulRuleGroupReferenceProperty = Value Prelude.Text
  set newValue StatefulRuleGroupReferenceProperty {..}
    = StatefulRuleGroupReferenceProperty {resourceArn = newValue, ..}