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
  = FirewallDomainList {domainFileUrl :: (Prelude.Maybe (Value Prelude.Text)),
                        domains :: (Prelude.Maybe (ValueList Prelude.Text)),
                        name :: (Prelude.Maybe (Value Prelude.Text)),
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirewallDomainList :: FirewallDomainList
mkFirewallDomainList
  = FirewallDomainList
      {domainFileUrl = Prelude.Nothing, domains = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
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