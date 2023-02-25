module Stratosphere.FMS.Policy.ThirdPartyFirewallPolicyProperty (
        ThirdPartyFirewallPolicyProperty(..),
        mkThirdPartyFirewallPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThirdPartyFirewallPolicyProperty
  = ThirdPartyFirewallPolicyProperty {firewallDeploymentModel :: (Value Prelude.Text)}
mkThirdPartyFirewallPolicyProperty ::
  Value Prelude.Text -> ThirdPartyFirewallPolicyProperty
mkThirdPartyFirewallPolicyProperty firewallDeploymentModel
  = ThirdPartyFirewallPolicyProperty
      {firewallDeploymentModel = firewallDeploymentModel}
instance ToResourceProperties ThirdPartyFirewallPolicyProperty where
  toResourceProperties ThirdPartyFirewallPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.ThirdPartyFirewallPolicy",
         properties = ["FirewallDeploymentModel"
                         JSON..= firewallDeploymentModel]}
instance JSON.ToJSON ThirdPartyFirewallPolicyProperty where
  toJSON ThirdPartyFirewallPolicyProperty {..}
    = JSON.object
        ["FirewallDeploymentModel" JSON..= firewallDeploymentModel]
instance Property "FirewallDeploymentModel" ThirdPartyFirewallPolicyProperty where
  type PropertyType "FirewallDeploymentModel" ThirdPartyFirewallPolicyProperty = Value Prelude.Text
  set newValue ThirdPartyFirewallPolicyProperty {}
    = ThirdPartyFirewallPolicyProperty
        {firewallDeploymentModel = newValue, ..}