module Stratosphere.Route53Resolver.FirewallRuleGroupAssociation (
        FirewallRuleGroupAssociation(..), mkFirewallRuleGroupAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data FirewallRuleGroupAssociation
  = FirewallRuleGroupAssociation {firewallRuleGroupId :: (Value Prelude.Text),
                                  mutationProtection :: (Prelude.Maybe (Value Prelude.Text)),
                                  name :: (Prelude.Maybe (Value Prelude.Text)),
                                  priority :: (Value Prelude.Integer),
                                  tags :: (Prelude.Maybe [Tag]),
                                  vpcId :: (Value Prelude.Text)}
mkFirewallRuleGroupAssociation ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text -> FirewallRuleGroupAssociation
mkFirewallRuleGroupAssociation firewallRuleGroupId priority vpcId
  = FirewallRuleGroupAssociation
      {firewallRuleGroupId = firewallRuleGroupId, priority = priority,
       vpcId = vpcId, mutationProtection = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties FirewallRuleGroupAssociation where
  toResourceProperties FirewallRuleGroupAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::FirewallRuleGroupAssociation",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FirewallRuleGroupId" JSON..= firewallRuleGroupId,
                            "Priority" JSON..= priority, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "MutationProtection" Prelude.<$> mutationProtection,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON FirewallRuleGroupAssociation where
  toJSON FirewallRuleGroupAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FirewallRuleGroupId" JSON..= firewallRuleGroupId,
               "Priority" JSON..= priority, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "MutationProtection" Prelude.<$> mutationProtection,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "FirewallRuleGroupId" FirewallRuleGroupAssociation where
  type PropertyType "FirewallRuleGroupId" FirewallRuleGroupAssociation = Value Prelude.Text
  set newValue FirewallRuleGroupAssociation {..}
    = FirewallRuleGroupAssociation {firewallRuleGroupId = newValue, ..}
instance Property "MutationProtection" FirewallRuleGroupAssociation where
  type PropertyType "MutationProtection" FirewallRuleGroupAssociation = Value Prelude.Text
  set newValue FirewallRuleGroupAssociation {..}
    = FirewallRuleGroupAssociation
        {mutationProtection = Prelude.pure newValue, ..}
instance Property "Name" FirewallRuleGroupAssociation where
  type PropertyType "Name" FirewallRuleGroupAssociation = Value Prelude.Text
  set newValue FirewallRuleGroupAssociation {..}
    = FirewallRuleGroupAssociation {name = Prelude.pure newValue, ..}
instance Property "Priority" FirewallRuleGroupAssociation where
  type PropertyType "Priority" FirewallRuleGroupAssociation = Value Prelude.Integer
  set newValue FirewallRuleGroupAssociation {..}
    = FirewallRuleGroupAssociation {priority = newValue, ..}
instance Property "Tags" FirewallRuleGroupAssociation where
  type PropertyType "Tags" FirewallRuleGroupAssociation = [Tag]
  set newValue FirewallRuleGroupAssociation {..}
    = FirewallRuleGroupAssociation {tags = Prelude.pure newValue, ..}
instance Property "VpcId" FirewallRuleGroupAssociation where
  type PropertyType "VpcId" FirewallRuleGroupAssociation = Value Prelude.Text
  set newValue FirewallRuleGroupAssociation {..}
    = FirewallRuleGroupAssociation {vpcId = newValue, ..}