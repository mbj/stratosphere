module Stratosphere.Route53Resolver.FirewallRuleGroup.FirewallRuleProperty (
        FirewallRuleProperty(..), mkFirewallRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirewallRuleProperty
  = FirewallRuleProperty {action :: (Value Prelude.Text),
                          blockOverrideDnsType :: (Prelude.Maybe (Value Prelude.Text)),
                          blockOverrideDomain :: (Prelude.Maybe (Value Prelude.Text)),
                          blockOverrideTtl :: (Prelude.Maybe (Value Prelude.Integer)),
                          blockResponse :: (Prelude.Maybe (Value Prelude.Text)),
                          firewallDomainListId :: (Value Prelude.Text),
                          priority :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirewallRuleProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer -> FirewallRuleProperty
mkFirewallRuleProperty action firewallDomainListId priority
  = FirewallRuleProperty
      {action = action, firewallDomainListId = firewallDomainListId,
       priority = priority, blockOverrideDnsType = Prelude.Nothing,
       blockOverrideDomain = Prelude.Nothing,
       blockOverrideTtl = Prelude.Nothing,
       blockResponse = Prelude.Nothing}
instance ToResourceProperties FirewallRuleProperty where
  toResourceProperties FirewallRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::FirewallRuleGroup.FirewallRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action,
                            "FirewallDomainListId" JSON..= firewallDomainListId,
                            "Priority" JSON..= priority]
                           (Prelude.catMaybes
                              [(JSON..=) "BlockOverrideDnsType" Prelude.<$> blockOverrideDnsType,
                               (JSON..=) "BlockOverrideDomain" Prelude.<$> blockOverrideDomain,
                               (JSON..=) "BlockOverrideTtl" Prelude.<$> blockOverrideTtl,
                               (JSON..=) "BlockResponse" Prelude.<$> blockResponse]))}
instance JSON.ToJSON FirewallRuleProperty where
  toJSON FirewallRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action,
               "FirewallDomainListId" JSON..= firewallDomainListId,
               "Priority" JSON..= priority]
              (Prelude.catMaybes
                 [(JSON..=) "BlockOverrideDnsType" Prelude.<$> blockOverrideDnsType,
                  (JSON..=) "BlockOverrideDomain" Prelude.<$> blockOverrideDomain,
                  (JSON..=) "BlockOverrideTtl" Prelude.<$> blockOverrideTtl,
                  (JSON..=) "BlockResponse" Prelude.<$> blockResponse])))
instance Property "Action" FirewallRuleProperty where
  type PropertyType "Action" FirewallRuleProperty = Value Prelude.Text
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty {action = newValue, ..}
instance Property "BlockOverrideDnsType" FirewallRuleProperty where
  type PropertyType "BlockOverrideDnsType" FirewallRuleProperty = Value Prelude.Text
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty
        {blockOverrideDnsType = Prelude.pure newValue, ..}
instance Property "BlockOverrideDomain" FirewallRuleProperty where
  type PropertyType "BlockOverrideDomain" FirewallRuleProperty = Value Prelude.Text
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty
        {blockOverrideDomain = Prelude.pure newValue, ..}
instance Property "BlockOverrideTtl" FirewallRuleProperty where
  type PropertyType "BlockOverrideTtl" FirewallRuleProperty = Value Prelude.Integer
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty
        {blockOverrideTtl = Prelude.pure newValue, ..}
instance Property "BlockResponse" FirewallRuleProperty where
  type PropertyType "BlockResponse" FirewallRuleProperty = Value Prelude.Text
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty {blockResponse = Prelude.pure newValue, ..}
instance Property "FirewallDomainListId" FirewallRuleProperty where
  type PropertyType "FirewallDomainListId" FirewallRuleProperty = Value Prelude.Text
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty {firewallDomainListId = newValue, ..}
instance Property "Priority" FirewallRuleProperty where
  type PropertyType "Priority" FirewallRuleProperty = Value Prelude.Integer
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty {priority = newValue, ..}