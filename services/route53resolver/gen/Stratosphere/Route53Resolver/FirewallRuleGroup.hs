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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewallrulegroup.html>
    FirewallRuleGroup {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewallrulegroup.html#cfn-route53resolver-firewallrulegroup-firewallrules>
                       firewallRules :: (Prelude.Maybe [FirewallRuleProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewallrulegroup.html#cfn-route53resolver-firewallrulegroup-name>
                       name :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewallrulegroup.html#cfn-route53resolver-firewallrulegroup-tags>
                       tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirewallRuleGroup :: FirewallRuleGroup
mkFirewallRuleGroup
  = FirewallRuleGroup
      {haddock_workaround_ = (), firewallRules = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties FirewallRuleGroup where
  toResourceProperties FirewallRuleGroup {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::FirewallRuleGroup",
         supportsTags = Prelude.True,
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