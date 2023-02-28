module Stratosphere.FMS.Policy.PolicyOptionProperty (
        module Exports, PolicyOptionProperty(..), mkPolicyOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FMS.Policy.NetworkFirewallPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.FMS.Policy.ThirdPartyFirewallPolicyProperty as Exports
import Stratosphere.ResourceProperties
data PolicyOptionProperty
  = PolicyOptionProperty {networkFirewallPolicy :: (Prelude.Maybe NetworkFirewallPolicyProperty),
                          thirdPartyFirewallPolicy :: (Prelude.Maybe ThirdPartyFirewallPolicyProperty)}
mkPolicyOptionProperty :: PolicyOptionProperty
mkPolicyOptionProperty
  = PolicyOptionProperty
      {networkFirewallPolicy = Prelude.Nothing,
       thirdPartyFirewallPolicy = Prelude.Nothing}
instance ToResourceProperties PolicyOptionProperty where
  toResourceProperties PolicyOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.PolicyOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NetworkFirewallPolicy"
                              Prelude.<$> networkFirewallPolicy,
                            (JSON..=) "ThirdPartyFirewallPolicy"
                              Prelude.<$> thirdPartyFirewallPolicy])}
instance JSON.ToJSON PolicyOptionProperty where
  toJSON PolicyOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NetworkFirewallPolicy"
                 Prelude.<$> networkFirewallPolicy,
               (JSON..=) "ThirdPartyFirewallPolicy"
                 Prelude.<$> thirdPartyFirewallPolicy]))
instance Property "NetworkFirewallPolicy" PolicyOptionProperty where
  type PropertyType "NetworkFirewallPolicy" PolicyOptionProperty = NetworkFirewallPolicyProperty
  set newValue PolicyOptionProperty {..}
    = PolicyOptionProperty
        {networkFirewallPolicy = Prelude.pure newValue, ..}
instance Property "ThirdPartyFirewallPolicy" PolicyOptionProperty where
  type PropertyType "ThirdPartyFirewallPolicy" PolicyOptionProperty = ThirdPartyFirewallPolicyProperty
  set newValue PolicyOptionProperty {..}
    = PolicyOptionProperty
        {thirdPartyFirewallPolicy = Prelude.pure newValue, ..}