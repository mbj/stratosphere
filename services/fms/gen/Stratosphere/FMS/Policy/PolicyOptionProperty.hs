module Stratosphere.FMS.Policy.PolicyOptionProperty (
        module Exports, PolicyOptionProperty(..), mkPolicyOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FMS.Policy.NetworkAclCommonPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.FMS.Policy.NetworkFirewallPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.FMS.Policy.ThirdPartyFirewallPolicyProperty as Exports
import Stratosphere.ResourceProperties
data PolicyOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policyoption.html>
    PolicyOptionProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policyoption.html#cfn-fms-policy-policyoption-networkaclcommonpolicy>
                          networkAclCommonPolicy :: (Prelude.Maybe NetworkAclCommonPolicyProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policyoption.html#cfn-fms-policy-policyoption-networkfirewallpolicy>
                          networkFirewallPolicy :: (Prelude.Maybe NetworkFirewallPolicyProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policyoption.html#cfn-fms-policy-policyoption-thirdpartyfirewallpolicy>
                          thirdPartyFirewallPolicy :: (Prelude.Maybe ThirdPartyFirewallPolicyProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyOptionProperty :: PolicyOptionProperty
mkPolicyOptionProperty
  = PolicyOptionProperty
      {haddock_workaround_ = (),
       networkAclCommonPolicy = Prelude.Nothing,
       networkFirewallPolicy = Prelude.Nothing,
       thirdPartyFirewallPolicy = Prelude.Nothing}
instance ToResourceProperties PolicyOptionProperty where
  toResourceProperties PolicyOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.PolicyOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NetworkAclCommonPolicy"
                              Prelude.<$> networkAclCommonPolicy,
                            (JSON..=) "NetworkFirewallPolicy"
                              Prelude.<$> networkFirewallPolicy,
                            (JSON..=) "ThirdPartyFirewallPolicy"
                              Prelude.<$> thirdPartyFirewallPolicy])}
instance JSON.ToJSON PolicyOptionProperty where
  toJSON PolicyOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NetworkAclCommonPolicy"
                 Prelude.<$> networkAclCommonPolicy,
               (JSON..=) "NetworkFirewallPolicy"
                 Prelude.<$> networkFirewallPolicy,
               (JSON..=) "ThirdPartyFirewallPolicy"
                 Prelude.<$> thirdPartyFirewallPolicy]))
instance Property "NetworkAclCommonPolicy" PolicyOptionProperty where
  type PropertyType "NetworkAclCommonPolicy" PolicyOptionProperty = NetworkAclCommonPolicyProperty
  set newValue PolicyOptionProperty {..}
    = PolicyOptionProperty
        {networkAclCommonPolicy = Prelude.pure newValue, ..}
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