module Stratosphere.Route53Resolver.FirewallRuleGroup (
        module Exports, FirewallRuleGroup(..), mkFirewallRuleGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Route53Resolver.FirewallRuleGroup.FirewallRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data FirewallRuleGroup
  = FirewallRuleGroup {firewallRules :: (Prelude.Maybe [FirewallRuleProperty]),
                       name :: (Prelude.Maybe (Value Prelude.Text)),
                       tags :: (Prelude.Maybe [Tag])}
mkFirewallRuleGroup :: FirewallRuleGroup
mkFirewallRuleGroup
  = FirewallRuleGroup
      {firewallRules = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties FirewallRuleGroup where
  toResourceProperties FirewallRuleGroup {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::FirewallRuleGroup",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FirewallRules" Prelude.<$> firewallRules,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON FirewallRuleGroup where
  toJSON FirewallRuleGroup {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FirewallRules" Prelude.<$> firewallRules,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "FirewallRules" FirewallRuleGroup where
  type PropertyType "FirewallRules" FirewallRuleGroup = [FirewallRuleProperty]
  set newValue FirewallRuleGroup {..}
    = FirewallRuleGroup {firewallRules = Prelude.pure newValue, ..}
instance Property "Name" FirewallRuleGroup where
  type PropertyType "Name" FirewallRuleGroup = Value Prelude.Text
  set newValue FirewallRuleGroup {..}
    = FirewallRuleGroup {name = Prelude.pure newValue, ..}
instance Property "Tags" FirewallRuleGroup where
  type PropertyType "Tags" FirewallRuleGroup = [Tag]
  set newValue FirewallRuleGroup {..}
    = FirewallRuleGroup {tags = Prelude.pure newValue, ..}