module Stratosphere.NetworkFirewall.FirewallPolicy (
        module Exports, FirewallPolicy(..), mkFirewallPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.FirewallPolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data FirewallPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewallpolicy.html>
    FirewallPolicy {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicy>
                    firewallPolicy :: FirewallPolicyProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-firewallpolicyname>
                    firewallPolicyName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-networkfirewall-firewallpolicy.html#cfn-networkfirewall-firewallpolicy-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirewallPolicy ::
  FirewallPolicyProperty -> Value Prelude.Text -> FirewallPolicy
mkFirewallPolicy firewallPolicy firewallPolicyName
  = FirewallPolicy
      {haddock_workaround_ = (), firewallPolicy = firewallPolicy,
       firewallPolicyName = firewallPolicyName,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties FirewallPolicy where
  toResourceProperties FirewallPolicy {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FirewallPolicy" JSON..= firewallPolicy,
                            "FirewallPolicyName" JSON..= firewallPolicyName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON FirewallPolicy where
  toJSON FirewallPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FirewallPolicy" JSON..= firewallPolicy,
               "FirewallPolicyName" JSON..= firewallPolicyName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" FirewallPolicy where
  type PropertyType "Description" FirewallPolicy = Value Prelude.Text
  set newValue FirewallPolicy {..}
    = FirewallPolicy {description = Prelude.pure newValue, ..}
instance Property "FirewallPolicy" FirewallPolicy where
  type PropertyType "FirewallPolicy" FirewallPolicy = FirewallPolicyProperty
  set newValue FirewallPolicy {..}
    = FirewallPolicy {firewallPolicy = newValue, ..}
instance Property "FirewallPolicyName" FirewallPolicy where
  type PropertyType "FirewallPolicyName" FirewallPolicy = Value Prelude.Text
  set newValue FirewallPolicy {..}
    = FirewallPolicy {firewallPolicyName = newValue, ..}
instance Property "Tags" FirewallPolicy where
  type PropertyType "Tags" FirewallPolicy = [Tag]
  set newValue FirewallPolicy {..}
    = FirewallPolicy {tags = Prelude.pure newValue, ..}