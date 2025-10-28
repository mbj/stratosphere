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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewallrulegroupassociation.html>
    FirewallRuleGroupAssociation {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewallrulegroupassociation.html#cfn-route53resolver-firewallrulegroupassociation-firewallrulegroupid>
                                  firewallRuleGroupId :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewallrulegroupassociation.html#cfn-route53resolver-firewallrulegroupassociation-mutationprotection>
                                  mutationProtection :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewallrulegroupassociation.html#cfn-route53resolver-firewallrulegroupassociation-name>
                                  name :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewallrulegroupassociation.html#cfn-route53resolver-firewallrulegroupassociation-priority>
                                  priority :: (Value Prelude.Integer),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewallrulegroupassociation.html#cfn-route53resolver-firewallrulegroupassociation-tags>
                                  tags :: (Prelude.Maybe [Tag]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewallrulegroupassociation.html#cfn-route53resolver-firewallrulegroupassociation-vpcid>
                                  vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirewallRuleGroupAssociation ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text -> FirewallRuleGroupAssociation
mkFirewallRuleGroupAssociation firewallRuleGroupId priority vpcId
  = FirewallRuleGroupAssociation
      {haddock_workaround_ = (),
       firewallRuleGroupId = firewallRuleGroupId, priority = priority,
       vpcId = vpcId, mutationProtection = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties FirewallRuleGroupAssociation where
  toResourceProperties FirewallRuleGroupAssociation {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::FirewallRuleGroupAssociation",
         supportsTags = Prelude.True,
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