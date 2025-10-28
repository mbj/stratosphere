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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-thirdpartyfirewallpolicy.html>
    ThirdPartyFirewallPolicyProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-thirdpartyfirewallpolicy.html#cfn-fms-policy-thirdpartyfirewallpolicy-firewalldeploymentmodel>
                                      firewallDeploymentModel :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThirdPartyFirewallPolicyProperty ::
  Value Prelude.Text -> ThirdPartyFirewallPolicyProperty
mkThirdPartyFirewallPolicyProperty firewallDeploymentModel
  = ThirdPartyFirewallPolicyProperty
      {haddock_workaround_ = (),
       firewallDeploymentModel = firewallDeploymentModel}
instance ToResourceProperties ThirdPartyFirewallPolicyProperty where
  toResourceProperties ThirdPartyFirewallPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.ThirdPartyFirewallPolicy",
         supportsTags = Prelude.False,
         properties = ["FirewallDeploymentModel"
                         JSON..= firewallDeploymentModel]}
instance JSON.ToJSON ThirdPartyFirewallPolicyProperty where
  toJSON ThirdPartyFirewallPolicyProperty {..}
    = JSON.object
        ["FirewallDeploymentModel" JSON..= firewallDeploymentModel]
instance Property "FirewallDeploymentModel" ThirdPartyFirewallPolicyProperty where
  type PropertyType "FirewallDeploymentModel" ThirdPartyFirewallPolicyProperty = Value Prelude.Text
  set newValue ThirdPartyFirewallPolicyProperty {..}
    = ThirdPartyFirewallPolicyProperty
        {firewallDeploymentModel = newValue, ..}