module Stratosphere.Route53Resolver.FirewallDomainList (
        FirewallDomainList(..), mkFirewallDomainList
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data FirewallDomainList
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewalldomainlist.html>
    FirewallDomainList {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewalldomainlist.html#cfn-route53resolver-firewalldomainlist-domainfileurl>
                        domainFileUrl :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewalldomainlist.html#cfn-route53resolver-firewalldomainlist-domains>
                        domains :: (Prelude.Maybe (ValueList Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewalldomainlist.html#cfn-route53resolver-firewalldomainlist-name>
                        name :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53resolver-firewalldomainlist.html#cfn-route53resolver-firewalldomainlist-tags>
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirewallDomainList :: FirewallDomainList
mkFirewallDomainList
  = FirewallDomainList
      {haddock_workaround_ = (), domainFileUrl = Prelude.Nothing,
       domains = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties FirewallDomainList where
  toResourceProperties FirewallDomainList {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::FirewallDomainList",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DomainFileUrl" Prelude.<$> domainFileUrl,
                            (JSON..=) "Domains" Prelude.<$> domains,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON FirewallDomainList where
  toJSON FirewallDomainList {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DomainFileUrl" Prelude.<$> domainFileUrl,
               (JSON..=) "Domains" Prelude.<$> domains,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DomainFileUrl" FirewallDomainList where
  type PropertyType "DomainFileUrl" FirewallDomainList = Value Prelude.Text
  set newValue FirewallDomainList {..}
    = FirewallDomainList {domainFileUrl = Prelude.pure newValue, ..}
instance Property "Domains" FirewallDomainList where
  type PropertyType "Domains" FirewallDomainList = ValueList Prelude.Text
  set newValue FirewallDomainList {..}
    = FirewallDomainList {domains = Prelude.pure newValue, ..}
instance Property "Name" FirewallDomainList where
  type PropertyType "Name" FirewallDomainList = Value Prelude.Text
  set newValue FirewallDomainList {..}
    = FirewallDomainList {name = Prelude.pure newValue, ..}
instance Property "Tags" FirewallDomainList where
  type PropertyType "Tags" FirewallDomainList = [Tag]
  set newValue FirewallDomainList {..}
    = FirewallDomainList {tags = Prelude.pure newValue, ..}