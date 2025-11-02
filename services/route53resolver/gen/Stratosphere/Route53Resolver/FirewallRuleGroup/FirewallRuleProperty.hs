module Stratosphere.Route53Resolver.FirewallRuleGroup.FirewallRuleProperty (
        FirewallRuleProperty(..), mkFirewallRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirewallRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-firewallrulegroup-firewallrule.html>
    FirewallRuleProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-firewallrulegroup-firewallrule.html#cfn-route53resolver-firewallrulegroup-firewallrule-action>
                          action :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-firewallrulegroup-firewallrule.html#cfn-route53resolver-firewallrulegroup-firewallrule-blockoverridednstype>
                          blockOverrideDnsType :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-firewallrulegroup-firewallrule.html#cfn-route53resolver-firewallrulegroup-firewallrule-blockoverridedomain>
                          blockOverrideDomain :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-firewallrulegroup-firewallrule.html#cfn-route53resolver-firewallrulegroup-firewallrule-blockoverridettl>
                          blockOverrideTtl :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-firewallrulegroup-firewallrule.html#cfn-route53resolver-firewallrulegroup-firewallrule-blockresponse>
                          blockResponse :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-firewallrulegroup-firewallrule.html#cfn-route53resolver-firewallrulegroup-firewallrule-confidencethreshold>
                          confidenceThreshold :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-firewallrulegroup-firewallrule.html#cfn-route53resolver-firewallrulegroup-firewallrule-dnsthreatprotection>
                          dnsThreatProtection :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-firewallrulegroup-firewallrule.html#cfn-route53resolver-firewallrulegroup-firewallrule-firewalldomainlistid>
                          firewallDomainListId :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-firewallrulegroup-firewallrule.html#cfn-route53resolver-firewallrulegroup-firewallrule-firewalldomainredirectionaction>
                          firewallDomainRedirectionAction :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-firewallrulegroup-firewallrule.html#cfn-route53resolver-firewallrulegroup-firewallrule-firewallthreatprotectionid>
                          firewallThreatProtectionId :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-firewallrulegroup-firewallrule.html#cfn-route53resolver-firewallrulegroup-firewallrule-priority>
                          priority :: (Value Prelude.Integer),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-firewallrulegroup-firewallrule.html#cfn-route53resolver-firewallrulegroup-firewallrule-qtype>
                          qtype :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirewallRuleProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> FirewallRuleProperty
mkFirewallRuleProperty action priority
  = FirewallRuleProperty
      {haddock_workaround_ = (), action = action, priority = priority,
       blockOverrideDnsType = Prelude.Nothing,
       blockOverrideDomain = Prelude.Nothing,
       blockOverrideTtl = Prelude.Nothing,
       blockResponse = Prelude.Nothing,
       confidenceThreshold = Prelude.Nothing,
       dnsThreatProtection = Prelude.Nothing,
       firewallDomainListId = Prelude.Nothing,
       firewallDomainRedirectionAction = Prelude.Nothing,
       firewallThreatProtectionId = Prelude.Nothing,
       qtype = Prelude.Nothing}
instance ToResourceProperties FirewallRuleProperty where
  toResourceProperties FirewallRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::FirewallRuleGroup.FirewallRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Priority" JSON..= priority]
                           (Prelude.catMaybes
                              [(JSON..=) "BlockOverrideDnsType" Prelude.<$> blockOverrideDnsType,
                               (JSON..=) "BlockOverrideDomain" Prelude.<$> blockOverrideDomain,
                               (JSON..=) "BlockOverrideTtl" Prelude.<$> blockOverrideTtl,
                               (JSON..=) "BlockResponse" Prelude.<$> blockResponse,
                               (JSON..=) "ConfidenceThreshold" Prelude.<$> confidenceThreshold,
                               (JSON..=) "DnsThreatProtection" Prelude.<$> dnsThreatProtection,
                               (JSON..=) "FirewallDomainListId" Prelude.<$> firewallDomainListId,
                               (JSON..=) "FirewallDomainRedirectionAction"
                                 Prelude.<$> firewallDomainRedirectionAction,
                               (JSON..=) "FirewallThreatProtectionId"
                                 Prelude.<$> firewallThreatProtectionId,
                               (JSON..=) "Qtype" Prelude.<$> qtype]))}
instance JSON.ToJSON FirewallRuleProperty where
  toJSON FirewallRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Priority" JSON..= priority]
              (Prelude.catMaybes
                 [(JSON..=) "BlockOverrideDnsType" Prelude.<$> blockOverrideDnsType,
                  (JSON..=) "BlockOverrideDomain" Prelude.<$> blockOverrideDomain,
                  (JSON..=) "BlockOverrideTtl" Prelude.<$> blockOverrideTtl,
                  (JSON..=) "BlockResponse" Prelude.<$> blockResponse,
                  (JSON..=) "ConfidenceThreshold" Prelude.<$> confidenceThreshold,
                  (JSON..=) "DnsThreatProtection" Prelude.<$> dnsThreatProtection,
                  (JSON..=) "FirewallDomainListId" Prelude.<$> firewallDomainListId,
                  (JSON..=) "FirewallDomainRedirectionAction"
                    Prelude.<$> firewallDomainRedirectionAction,
                  (JSON..=) "FirewallThreatProtectionId"
                    Prelude.<$> firewallThreatProtectionId,
                  (JSON..=) "Qtype" Prelude.<$> qtype])))
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
instance Property "ConfidenceThreshold" FirewallRuleProperty where
  type PropertyType "ConfidenceThreshold" FirewallRuleProperty = Value Prelude.Text
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty
        {confidenceThreshold = Prelude.pure newValue, ..}
instance Property "DnsThreatProtection" FirewallRuleProperty where
  type PropertyType "DnsThreatProtection" FirewallRuleProperty = Value Prelude.Text
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty
        {dnsThreatProtection = Prelude.pure newValue, ..}
instance Property "FirewallDomainListId" FirewallRuleProperty where
  type PropertyType "FirewallDomainListId" FirewallRuleProperty = Value Prelude.Text
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty
        {firewallDomainListId = Prelude.pure newValue, ..}
instance Property "FirewallDomainRedirectionAction" FirewallRuleProperty where
  type PropertyType "FirewallDomainRedirectionAction" FirewallRuleProperty = Value Prelude.Text
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty
        {firewallDomainRedirectionAction = Prelude.pure newValue, ..}
instance Property "FirewallThreatProtectionId" FirewallRuleProperty where
  type PropertyType "FirewallThreatProtectionId" FirewallRuleProperty = Value Prelude.Text
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty
        {firewallThreatProtectionId = Prelude.pure newValue, ..}
instance Property "Priority" FirewallRuleProperty where
  type PropertyType "Priority" FirewallRuleProperty = Value Prelude.Integer
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty {priority = newValue, ..}
instance Property "Qtype" FirewallRuleProperty where
  type PropertyType "Qtype" FirewallRuleProperty = Value Prelude.Text
  set newValue FirewallRuleProperty {..}
    = FirewallRuleProperty {qtype = Prelude.pure newValue, ..}