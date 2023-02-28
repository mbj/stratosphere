module Stratosphere.NetworkFirewall.FirewallPolicy.StatelessRuleGroupReferenceProperty (
        StatelessRuleGroupReferenceProperty(..),
        mkStatelessRuleGroupReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatelessRuleGroupReferenceProperty
  = StatelessRuleGroupReferenceProperty {priority :: (Value Prelude.Integer),
                                         resourceArn :: (Value Prelude.Text)}
mkStatelessRuleGroupReferenceProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> StatelessRuleGroupReferenceProperty
mkStatelessRuleGroupReferenceProperty priority resourceArn
  = StatelessRuleGroupReferenceProperty
      {priority = priority, resourceArn = resourceArn}
instance ToResourceProperties StatelessRuleGroupReferenceProperty where
  toResourceProperties StatelessRuleGroupReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.StatelessRuleGroupReference",
         supportsTags = Prelude.False,
         properties = ["Priority" JSON..= priority,
                       "ResourceArn" JSON..= resourceArn]}
instance JSON.ToJSON StatelessRuleGroupReferenceProperty where
  toJSON StatelessRuleGroupReferenceProperty {..}
    = JSON.object
        ["Priority" JSON..= priority, "ResourceArn" JSON..= resourceArn]
instance Property "Priority" StatelessRuleGroupReferenceProperty where
  type PropertyType "Priority" StatelessRuleGroupReferenceProperty = Value Prelude.Integer
  set newValue StatelessRuleGroupReferenceProperty {..}
    = StatelessRuleGroupReferenceProperty {priority = newValue, ..}
instance Property "ResourceArn" StatelessRuleGroupReferenceProperty where
  type PropertyType "ResourceArn" StatelessRuleGroupReferenceProperty = Value Prelude.Text
  set newValue StatelessRuleGroupReferenceProperty {..}
    = StatelessRuleGroupReferenceProperty {resourceArn = newValue, ..}